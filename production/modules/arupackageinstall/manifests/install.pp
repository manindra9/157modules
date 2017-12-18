
class arupackageinstall::install
{

package {'ntp':
ensure => installed,
}
}
