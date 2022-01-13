<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Alias
{
	public function str_alias($alias)
    {
        $alias = html_entity_decode( $alias );
        //thay thế chữ thuong
        $alias = preg_replace( "/(å|ä|ā|à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ|ä|ą)/", 'a', $alias );
        $alias = preg_replace( "/(ß|ḃ)/", "b", $alias );
        $alias = preg_replace( "/(ç|ć|č|ĉ|ċ|¢|©)/", 'c', $alias );
        $alias = preg_replace( "/(đ|ď|ḋ|đ)/", 'd', $alias );
        $alias = preg_replace( "/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ|ę|ë|ě|ė)/", 'e', $alias );
        $alias = preg_replace( "/(ḟ|ƒ)/", "f", $alias );
        $alias = str_replace( "ķ", "k", $alias );
        $alias = preg_replace( "/(ħ|ĥ)/", "h", $alias );
        $alias = preg_replace( "/(ì|í|î|ị|ỉ|ĩ|ï|î|ī|¡|į)/", 'i', $alias );
        $alias = str_replace( "ĵ", "j", $alias );
        $alias = str_replace( "ṁ", "m", $alias );

        $alias = preg_replace( "/(ö|ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|ö|ø|ō)/", 'o', $alias );
        $alias = str_replace( "ṗ", "p", $alias );
        $alias = preg_replace( "/(ġ|ģ|ğ|ĝ)/", "g", $alias );
        $alias = preg_replace( "/(ü|ù|ú|ū|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ|ü|ų|ů)/", 'u', $alias );
        $alias = preg_replace( "/(ỳ|ý|ỵ|ỷ|ỹ|ÿ)/", 'y', $alias );
        $alias = preg_replace( "/(ń|ñ|ň|ņ)/", 'n', $alias );
        $alias = preg_replace( "/(ŝ|š|ś|ṡ|ș|ş|³)/", 's', $alias );
        $alias = preg_replace( "/(ř|ŗ|ŕ)/", "r", $alias );
        $alias = preg_replace( "/(ṫ|ť|ț|ŧ|ţ)/", 't', $alias );

        $alias = preg_replace( "/(ź|ż|ž)/", 'z', $alias );
        $alias = preg_replace( "/(ł|ĺ|ļ|ľ)/", "l", $alias );

        $alias = preg_replace( "/(ẃ|ẅ)/", "w", $alias );

        $alias = str_replace( "æ", "ae", $alias );
        $alias = str_replace( "þ", "th", $alias );
        $alias = str_replace( "ð", "dh", $alias );
        $alias = str_replace( "£", "pound", $alias );
        $alias = str_replace( "¥", "yen", $alias );

        $alias = str_replace( "ª", "2", $alias );
        $alias = str_replace( "º", "0", $alias );
        $alias = str_replace( "¿", "?", $alias );

        $alias = str_replace( "µ", "mu", $alias );
        $alias = str_replace( "®", "r", $alias );

        //thay thế chữ hoa
        $alias = preg_replace( "/(Ä|À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|Ą|Å|Ā)/", 'A', $alias );
        $alias = preg_replace( "/(Ḃ|B)/", 'B', $alias );
        $alias = preg_replace( "/(Ç|Ć|Ċ|Ĉ|Č)/", 'C', $alias );
        $alias = preg_replace( "/(Đ|Ď|Ḋ)/", 'D', $alias );
        $alias = preg_replace( "/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ|Ę|Ë|Ě|Ė|Ē)/", 'E', $alias );
        $alias = preg_replace( "/(Ḟ|Ƒ)/", "F", $alias );
        $alias = preg_replace( "/(Ì|Í|Ị|Ỉ|Ĩ|Ï|Į)/", 'I', $alias );
        $alias = preg_replace( "/(Ĵ|J)/", "J", $alias );

        $alias = preg_replace( "/(Ö|Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|Ø)/", 'O', $alias );
        $alias = preg_replace( "/(Ü|Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ|Ū|Ų|Ů)/", 'U', $alias );
        $alias = preg_replace( "/(Ỳ|Ý|Ỵ|Ỷ|Ỹ|Ÿ)/", 'Y', $alias );
        $alias = str_replace( "Ł", "L", $alias );
        $alias = str_replace( "Þ", "Th", $alias );
        $alias = str_replace( "Ṁ", "M", $alias );

        $alias = preg_replace( "/(Ń|Ñ|Ň|Ņ)/", "N", $alias );
        $alias = preg_replace( "/(Ś|Š|Ŝ|Ṡ|Ș|Ş)/", "S", $alias );
        $alias = str_replace( "Æ", "AE", $alias );
        $alias = preg_replace( "/(Ź|Ż|Ž)/", 'Z', $alias );

        $alias = preg_replace( "/(Ř|R|Ŗ)/", 'R', $alias );
        $alias = preg_replace( "/(Ț|Ţ|T|Ť)/", 'T', $alias );
        $alias = preg_replace( "/(Ķ|K)/", 'K', $alias );
        $alias = preg_replace( "/(Ĺ|Ł|Ļ|Ľ)/", 'L', $alias );

        $alias = preg_replace( "/(Ħ|Ĥ)/", 'H', $alias );
        $alias = preg_replace( "/(Ṗ|P)/", 'P', $alias );
        $alias = preg_replace( "/(Ẁ|Ŵ|Ẃ|Ẅ)/", 'W', $alias );
        $alias = preg_replace( "/(Ģ|G|Ğ|Ĝ|Ġ)/", 'G', $alias );
        $alias = preg_replace( "/(Ŧ|Ṫ)/", 'T', $alias );

        if ( empty( $alias ) ) return $alias;
        if ( is_array( $alias ) )
        {
            foreach ( array_keys( $alias ) as $key )
            {
                $alias[$key] = nv_unhtmlspecialchars( $alias[$key] );
            }
        }
        else
        {
            $search = array(
                '&amp;', '&#039;', '&quot;', '&lt;', '&gt;', '&#x005C;', '&#x002F;', '&#40;', '&#41;', '&#42;', '&#91;', '&#93;', '&#33;', '&#x3D;', '&#x23;', '&#x25;', '&#x5E;', '&#x3A;', '&#x7B;', '&#x7D;', '&#x60;', '&#x7E;'
            );
            $replace = array(
                '&', '\'', '"', '<', '>', '\\', '/', '(', ')', '*', '[', ']', '!', '=', '#', '%', '^', ':', '{', '}', '`', '~'
            );
            $alias = str_replace( $search, $replace, $alias );
        }

        //thêm trường hợp các kí tự đặc biệt
        $alias = preg_replace( "/(!|\"|#|$|%|'|̣)/", '', $alias );
        $alias = preg_replace( "/(̀|́|̉|$|>)/", '', $alias );
        $alias = preg_replace( "'<[\/\!]*?[^<>]*?>'si", "", $alias );

        $alias = str_replace( "----", " ", $alias );
        $alias = str_replace( "---", " ", $alias );
        $alias = str_replace( "--", " ", $alias );

        $alias = preg_replace( '/(\W+)/i', '-', $alias );
        $alias = str_replace( array(
            '-8220-', '-8221-', '-7776-'
        ), '-', $alias );
        //$alias = preg_replace( '/[^a-zA-Z0-9\-]+/e', '', $alias );
        $alias = str_replace( array(
            'dAg', 'DAg', 'uA', 'iA', 'yA', 'dA', '--', '-8230'
        ), array(
            'dong', 'Dong', 'uon', 'ien', 'yen', 'don', '-', ''
        ), $alias );
        $alias = preg_replace( '/(\-)$/', '', $alias );
        $alias = preg_replace( '/^(\-)/', '', $alias );
        return strtolower($alias);
    }
}

