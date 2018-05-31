#ifndef TEXT_RENDER_HPP
#define TEXT_RENDER_HPP

/*include cplusplus ibrarys*/
#include <algorithm>
#include <utility>
#include <type_traits>
#include <cstddef>
#include <cstdlib>
#include <string>
#include <string_view>
#include <array>
#include <exception>
#include <stdexcept>

using namespace std::string_literals/*s*/;
using namespace std::string_view_literals/*sv*/;

/*inlcude all qt librarys*/
#include <QtCore/QtCore>
#include <QtGui/QtGui>
#include <QtWidgets/QtWidgets>

namespace sstd {
	/*���׵�λָʾ��*/
	static inline constexpr double operator""_mm(long double a) { return static_cast<double>(a); }
	/*�㵥λָʾ��*/
	static inline constexpr double operator""_deg(long double a) { return static_cast<double>(a); }
	/*������λָʾ��*/
	static inline constexpr double operator""_per(long double a) { return static_cast<double>(a); }
	/*to Qt utf8 */
	static inline QString operator""_qtu8str(const char *a, std::size_t b) { return QString::fromUtf8(a, static_cast<int>(b)); }
	class RenderState {
	public:
		QString $TextFileName/*Ҫ��Ⱦ��txt�ļ�����*/;
		QString $OutPutDir/*�����Ⱦ���·��*/;
		double  $PageWidth/*ҳ����,��λ����*/;
		double  $PageHeight/*ҳ��߶�,��λ����*/;
		enum MarginType : unsigned char {
			Top = 0,
			Bottom = 1,
			Left = 2,
			Right = 3,
			SizeOfMargin = 4
		};
		std::array<double, MarginType::SizeOfMargin> $Margin{
			0.1_mm /*�ϱ߾�,mm*/,
			0.1_mm /*�±߾�,mm*/,
			0.1_mm /*��߾�,mm*/,
			0.1_mm /*�ұ߾�,mm*/ }/*�������ұ߾�*/;
		class Limit {
		public:
			double $Min /*��Сֵ*/;
			double $Max /*���ֵ*/;
			constexpr inline Limit() :$Min(0), $Max(0) {}
			constexpr inline Limit(const double &a, const double &b) : $Min(a), $Max(b) {}
		};
		double $FontBasicSize{ 5.2_mm }/*����Ĭ�ϴ�С,��λmm*/;
		double $FontLineHeight{ 6._mm }/*ÿ�и߶�,��λmm*/;
		Limit $FontDx{ -1._mm,1._mm }/*�������λ��,��λmm*/;
		Limit $FontDy{ -1._mm,1._mm }/*�������λ��,��λmm*/;
		Limit $FontRotate{ -1.5_deg,1.6_deg }/*���������ת,��λ��*/;
		Limit $FontGlobalScale{ 0.0_per,1.0_per }/*����ȫ�����ű���*/;
		Limit $FontScaleX{ 0.0_per,1.0_per }/*����������ű���*/;
		Limit $FontScaleY{ 0.0_per,1.0_per }/*�����������ű���*/;
		QString $TextLayerName{ u8R"(0)"_qtu8str }/*��������ͼ��*/;
		QString $BorderLayerName{u8R"(Defpoints)"_qtu8str }/*�߽����ڵ�ͼ��*/;
		/*********************************************************/
		template<
			typename CharType = char,
			int MPN = 8,
			CharType SC = '0',
			CharType EC = '9'>
			class NextNumber {
			public:
				using char_type = CharType;
				constexpr const static int  $MaxPageNumber = MPN;
				constexpr const static char_type $StartChar = SC;
				constexpr const static char_type $EndChar = EC;
				std::array<char_type, $MaxPageNumber + 1> $String;
				int $CurrentNumber = -1;
				NextNumber() {
					for (auto & i : $String) { i = $EndChar; }
					*$String.rbegin() = 0;
				}
				/*���������*/
				void next() {
					++$CurrentNumber;
					auto varPos = $String.rbegin() + 1;
					const auto varEnd = $String.rend();
					for (; varPos != varEnd; ++varPos) {
						if (*varPos == $EndChar) {
							*varPos = $StartChar;
							continue;
						}
						++*varPos;
						break;
					}
				}
		};
		/*********************************/
		NextNumber<wchar_t, 8, '0', '9'> $CurrentPageNumber;
		bool $IsFileAndStreamOpen=false/*�ж������ļ���û�д�*/;
		QFile $File/*��ǰ�ļ�*/;
		QTextStream $Stream/*��ǰ��*/;
		std::string $DataInPastPage/*��һҳ�滹ô�д��������,utf8����*/;
		bool $IsEndl = false;
	};

}/*namespace sstd*/

#endif


