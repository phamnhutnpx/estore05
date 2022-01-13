<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Phantrang{
	function PageCurrent()
	{
		$url= explode('/',uri_string());
		$page=$url[count($url)-1];
		if(is_numeric($page))
		{
			return $page;
		}
		else
		{
			return 1;
		}
	}

	function PageFirst($limit, $current)
	{
		return ($current == 1)?0:(($current-1)*$limit);
	}

	function PagePer($total, $current, $limit, $url='')
	{
		if( $total == 0) return '';//O(1)
		$numPage = floor( $total / $limit);//O(1)
		if(( $total / $limit) - $numPage > 0)//O(1)
		{
			$numPage += 1;//O(1)
		}
		$html = '';//O(1)
		if( $numPage == 1)//O(1)
			return '';//O(1)
		if( $current == 1)//O(1)
		{
			$html.= "<li class = 'hidden-xs'><a>Trang đầu</a></li>";//O(1)
			$html.= "<li><a>Trước</a></li>";//O(1)
		}
		else
		{
			$html.= "<li class = 'hidden-xs'><a href='$url/1'>Trang đầu</a></li>";//O(1)
			$html.= "<li><a href='$url/".($current - 1)."'>Trước</a></li>";//O(1)
		}
		if($current <= 3)//O(1)
		{
			for($i = 1; ($i <= 5) && ($i <= $numPage); $i++)//O(n+6)
			{
				if($i == $current)//O(1)
				{
					$html.= "<li class = 'active'><a>".$i."</a></li>";//O(1)
				}
				else
				{
					$html.= "<li><a href='$url/$i'>$i</a></li>";//O(1)
				}
			}
		}
		else
		{
			if($numPage >= $current + 2)//O(1)
			{
				for($i = $current - 2; ($i <= $current + 2) && ($i <= $numPage); $i++)//O(2*n+2)
				{
					if($i == $current)//O(1)
					{
						$html.= "<li class = 'active'><a>".$i."</a></li>";//O(1)
					}
					else
					{
						$html.= "<li><a href='$url/$i'>$i</a></li>";//O(1)
					}
				}
			}
			else
			{
				for($i = $numPage - 4; $i <= $numPage; $i++)//O(n-2)
				{
					if($i > 0)//O(1)
					{
						if($i == $current)//O(1)
						{
							$html.= "<li class = 'active'><a>".$i."</a></li>";//O(1)
						}
						else
						{
							$html.= "<li><a href='$url/$i'>$i</a></li>";//O(1)
						}
					}
				}
			}
		}
		if($current == $numPage)//O(1)
		{
			$html.= "<li><a>Sau</a></li>";//O(1)
			$html.= "<li class = 'hidden-xs'><a>Trang cuối</a></li>";//O(1)
		}
		else
		{
			$html.="<li><a href='$url/".($current + 1)."'>Sau</a></li>";//O(1)
			$html.="<li class = 'hidden-xs'><a href='$url/$numPage'>Trang cuối</a></li>";//O(1)
		}
		return $html;//O(1)
	}
}

