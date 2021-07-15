<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    
    <link href="css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrapValidator.css">
    <link href="css/typography.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link rel="shortcut icon" href="Iconos/isotipo.5.png">
	

</head>
<title>Inicia Sesión</title>
</head>

<body>



    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">   
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <form id="login-form" class="form" action="loginPage" method="post" autocomplete="off">


                        <div class=" d-flex justify-content-center">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="583.995" height="150.415" viewBox="0 0 3207 826">
                            <image width="3207" height="826" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAkgAAACWCAYAAAAltXfZAAAgAElEQVR4nO2dCZgdRbXHT08my2RnDSAIAQSCQAQBEUQQBEFZlB03RBYRFfWBoj4egqB5KiqCIqCCIrIFFeJjVVRQRFZBEjEYCUsIW/ZkMpPJzO331eTfoVKpqq6ururbc+f88nXundtbdXd1179PnXMq6WukREQPEtFWRHQfEf2HiF4hoiVEtIiIFhLRHCKaTUTdKfUvX0sSSoIWKwm7uaaQpimlfX2tcTAME5kE94m4b1SSGt5D6SC6r0O0PHU/Wz7HqB5T2fNU13MUun132mdfIz2KiKY6LLuUiJ4lohdTShdBQC0moteIaBZE1TIstwhTpWqKBdLasEBiGHdYINUXFkh6WCDFo52IDnTc+hgi2lFMWUEt1qQeInqViJ6TrE/zIaqW4nMe5r9StZBiGIZhGIaxISxIzxDRxBBnyaP7rQEhNQefyxQR9RJElLBULSeiTiwj/u5SN8YWpLVhCxLDuMMWpPrCFiQ9bEGKuM9Gmi6BdagfzXMhCAF9l/ogkoSgelmIqISSObBIdWKSrVQvw0q1suiOWCAxzOCCBVJ9YYGkhwVSxH020vT3RLS/aYFYgqliFhDRCxBVS2GByqxVc9EFuADiagkc05eyQGKYwQULpPrCAkkPC6SI+2yk6a5E9HDRFVtEOK2F8rx5DVF9wuH8LCKaUYtCFoAFEsO4wwKpvrBA0sMCKR7CSfsRItqaiM4goj2IaCTOcS+crbWlUu9LPE8SdIEZ1yt8Tlb5KRXuHrNsL4WVqIFnnvhtCKZ2aeogolFENIGIdiKidQOVoRJWP+DFJ4sjhmEYhimEsCAFO2MD0arUatqh32LUaLx+MVgcMYwzbEGqL2xB0sMWpHi0G7bcjvPcV3mJGC9WC6MMFkYMwzAM441JIE2Bz80s5C+aJ30uRIh9F0LvxdSNz8WYvwDfay+w5BfFgaopGsLHiLvSGIZhGCYYJoG0Bz63xuRE1j6nKa2AY/Ni6bNbmlZI33sgrrLlFiOarAe+R/Jnr/Q9+70bvw9K+sURscWIYRiGYUKi80HaAmHvUSnhr9SAIOqDQOpUkkh2SlMWsr8comwFLF+ZOOuSwv0XJkm/SFtaZ8tXv28ETp7OT4JhGH/YB6m+sA+SHvZBiofOgjSpih2XuK/biGgYvotIs7E+OsGy/08T0Q+9SxcJ4V+0WhyxtYhhGIZhoqITSAOu9TXohS74TS2SkkB2Sz5TmSUpy7q9DJajP1V+ABbWiEoTB8riiGEYhmGioxNIj0JMjGrC6e+GUJG7wLrQNbZUchZfIM2TncUzR/EFWG5xE44hGP1WIyGOWBgxDMMwTKWY8iB9logu9ihIDyw2CzEtkiw1mYDpkpyyX8PwHwul9ZbBx6jhsL+WhLNfM0xzYB+k+sI+SHrYByniPi2JIvcjoqOJaDMImtkQNCsUq02X5Aw9D0Jn0EaVlWUNqxHDMJXCAqm+sEDSwwIp4j5DZtJm3DBGn2X+RiyOGKYpsECqLyyQ9LBAikdbpC0fR0RHVn40eo4hokuIaLtmFkI8cBuNRn/eon4rkfhUJ45QYxiGYZhaENqCdAAR3YIBbwldbnsT0b+acLBicNnHiGhz6bdL4F9VHcIqxJYhhhkQsAWpvrAFSQ9bkOJhyqTty8aSOBKsT0TjKz+qVXQrZaFA95gbEEarYXHEMAzDMAOG0F1s1xLRC9Lf4vtDTToZwoH8p8pv06LvFdYiznLNMAzDMAOX0AJJhObfL/392yaH6/9Z+i4i656KticWRgzDMAzTMsRw0r5O+v5gk0/U7dK4ciJD9ktR9qJ2pzEMwzAMM6CJIZBkK81Mz21sgu66J4joQCIaUqI8T+DzzznLrUE27JnrxDAMwzBM6xDaSZswwn7GIo/1JxPR49LfdxHRD4joM57lyUbmX+G6AgsehmEYhhncxLAgyQLJx/IzWyOsnjAs60IPlomV84lhGIZhmBYjhmiQ49l7LMuZEMOW3CDNWwFn77KsDLANhmEYhmEGAbGtKp2e690rfZ9ORK+UKEMm2Hh8OIZhGIZhnIghkGRfH1/n6j9J27k/Z9k8MisWZ2pkGIZhGMaJGAJJdnH2tSC9TETP43uh6DMNWR4mZydthmEYhmEGNzEEkpwYMkS3VtlEk5nliH2QGIZhGIZxIoZAGid9n1BiO5mw8XH0lhkboCwMwzAMwwwiYgikfaXv7y6xnUwYdZXYxmZEdCi+f6jEdhiGYRiGGUTEEEgnSd+PL7GdEOka3yslw9yOiHYLsE2GYRiGYVqcPIEk5p8hCYsRlknwJiJ6u7T+O4lox5x1Cd1yZxHRJGndLAJO9mM6hIg+hXKNJKIxhmkYlj9OOZ4j8TnasN4ozBci7yiu/AzDMAwzOEka9nE1DsaAr66kJcPpr5O6wp4koh2IaG8i+gtEz7NEtHEVVypNaTkRTSSiV/MXzvcj58FsGab+JMmqx5fufs3m1Ym0hmWKRYgnaN3Pls8xqsdU9jzV9RwlTShZ3lhssv9PZslJYcHR5TjSHYEayZZiXZ31arT0vUdaPvt7HgTSihwxJuYN1ZRRpB1YiuPOjmMUPlN5vSTpt1CNMmxf2lMa5MZlGIZhGKY+5AkkkbDxWGSz/icERyYsOiBQMn0ghMcpRHSlso23EdFjklhpQISMwLorsb2PENEj0nqZOJFFk+heW5eIbsW+TV2EYoDaTYjoGSIaLv0uBr39krLsEGU9knyXZlvPjhBHbBliGIZhmJbDZTT/m6TvmYBoQBCp6KxKvcq6BGuQGr5/hfRd+CJti+8fwYj+pCSNTJVtqvRpLEzDDMupOHUrsjhiGIZhmNbERSAVoUOzrE/H4buk7+/wLEu7RrCF6cRkyxHDMAzDtDShw/x1Fprl6O7aosB25PQAm0vRZ3nsRES7YBmdD1IQWBwxDMMwTGsT24LUh3D8HxPRPkT0RwgXneN95o/UAb8lmR8S0eektAAZYjvd6K5LkKRyGhEdntP95gdbjhiGYRhmUBBaIKkI69EbMZHSdVaECQWGCnkLPpeFPhgWRwzDMAwzOIgtkETyxb8hsm17IjqfiNZRuvZSlENYll5DYskble18i4i+gWzYqbLuUHwXKQkuIqLH8ff4YEcxeCxHo6WUBwmscJ01KFfVjEfC014EJIxCvXp+cJ2GAYfoUv8DEb0Zz5INiGgGEe0XxaLMMExLU1gguegEJXeZ8D/63wK7UPMmCZYQ0WIiejBn3f2l78MtyxVikIgj0bg8SkTbIEJxDP7etQZlq5rJmkjGM4nou61/6AOadrxErYeJ8Hc7CySGYYoS2oI0PEBiV51j9VDNb5WQNvKzZCO3krBwzcTfmVVsGL73wML1b6RNmIZkl3ViCIZ8IYgj+TMkCQTIXKcs5c1Bd9GrVskTYA0ZjxcEmTbUn6xO3YGcZS9WXMa60Qs/RpmVhpcuhmEYK4UFUo4AChFG3zQxtBbulqONcOzbmRYQwxSkaTpZGuPtCCL6TfAy+zNEUx9CRQGKLqqPEdEe8EN7AxEdSES/q+rgBiBDUZ/aYIU1sbs0PM8/iOjTSr4whmEYxoPQFqQQb9lRQvN9KNC1pltwOT5HGtb5NXwl/lnJweQjogGnYCiXZbAm/SfQto9FFnMZJ9PcICbV1KsGrJHDDS8jIs3FfUT0TU3GeIZhGKYAsZ20fdA1nNVblcr7HYlhUX5GRJshM/j3NRYm4ddyUtkdBUIc8HdqUhZGTzdEkOhK25mIdiOir2giPM9G99v5fB4ZhmH8qKNA0iWvrI1VqQDZUCoviClN0y8Q0W+V1d9s2NxIdJUcDz+gzJrwKETMI8ryIm/UpkS0EJYFEY32JMaiU9kVVqLl8JES5bwHy7wD++tBzqkFRPSAZht7EdHnEXGYjcfXi/3fg4ZZCN0DiOg5CESVXXButkfXUFbWDiz/bqy/sSSQUzjr30ZEP0Kkki+boZz7SOP6CZ+fj2MfRTiGiE7HNrNrJY77MlgKQyHKuQhC6QFMl8JqpGacPw9jFj5u2PexEPFvkMo8G+fV1PU7CU78y9BtOhv1TNTji3HNpuJ8yOwM0ZY5/Kfwq7oJ50g3bJGMqM8fxf0wAeehARH4NKJcHzFYcrvgoH00EZ2D+p3gGouo12tz9i26wk9Fotvs2SS293ece939wTBMCxBaIIXwQdJl4x7QYWToqntWM0sXWXMYGjYdbyKi44joTiI6WJq/ryZS8DrJNyWjDY3fptJvt0PUiGv3KyLaUJr3bzSIMreijCaEeLqKiOYQ0d2W5b6FiSBUzsN30TV0rmU9gt/N+Wgwb8hZVocY3+8aze8nIrz/CohEXV2U2RyiakvNvK0RVfkixIvu+hclMSRZPQzXaj1l3kc1Akk09H+BMNKV+QCI1f0g8mQ+DItVxlWoT7Lwn6isc6NGMGXsgnr7QSK63rCMsLD+xHKeJiMVxYmG58QQHO9emnm/wDU6UTPvreK+SJJknGYewRos6t9T8KebYykjwzADkNBDjagD0IZiIAqk1WUWDtpJkrxVs8ydyt+HasSReLv+F96EMw5C5FLGrzTb3k+TefwgRRyR1DAN0UT7qALuhxpxNB/lkxuIzhLie4GynVmYujXL/hwipQhCZF6tWT6FVWI7CLe88m8Ii54sjlbCoiEfwxuQnmL9guUswkIIYpX3K3+LsjymiCNdmcUxPaQps2rpOQhZ8k1M04ij52E5lLlOCl6QOdsijvqke2w+PnUvaBMN4ijjY9n85PUIlMlJkjyiEUcNzbNoEix4oyz7YBhmABJaIMVyvM17k68j28P6chy6Ea5I1gwBnE5EF0h/j8EbucxDsApMQsMuNyyicToZ32dpLCkisu59ym+HK38vQXcVGZyCZcbiTV/mQjSik9C9tD0sQCnC0E+F6NMJkotQvi8oonA+LBeHoDvlTZjW0XT9DNMcUx5f0nTZzoc/j/j9i+jSy7s3LlUsNsvQhbQtfr9Nmrchjjcmf9dsewspiz1BzKwj/b1UKfP9Bcu8CeoZQQxdKQn3k3DtZT4JQftGxRIl+Lry986G/Gm/RHnHo158VYraM1mw5xHRJ4johCRJ5uKFRZ4OU+5N9T4kWMKG4HjVLu6J6GJkGKaFCC2QYuFjjWh2lNQ5yIt0PRqG/sSVSZJMx0P97cryR2ve2L8u5XV5EUJLRhYsOr8RdR/7KH9fBeuDCxM02ckXKX8/hQiq7I1eNMj/hy4OlTvRvXeR0rj/BoLrNiWLdze6NF5RtjPZsfwZe2t++zSsQYJvW7o4MyZpLCOXwZcq45vK/OMN3Vqh0PljJVIU5SSlW5ZQR+Uy/48yX/jfrJtTPiGG94RQ/YTUPXqCspwQX5dnogSCQi7zNthfxumafV2Dbr6nIUhFlOXX1OulEUAfhHi7Bveeypukv98pDXid8ax0r70Kq5PKhyWxyDBMCzBQBJJPF5uaMK4uzEyS5MIkSZYpb61qw90LKxNJCRvnKctsK4nHm6RElRnHStaSg7G8TJ4QkJmn6WK5CEM5fEruYpAaQWekxqwzSZIuNO67QbxciIbtdE03rs7/x8SblcaQIKTVvEEmf5iMPTW/PYbP7Fqpjt7DNII1JHn3iK7MmV/UWHyqImuM5nypfE/jqLy9pj4/gjohtjkkSZIVmkSh75S+v1UjdK4w1S15OQXRdfhXad4/1lp5TcvTjpr5v1deuGZIgjpjhOEcxyNAVl6GYczUMYpNh49AavbT44/oIjsYodkZRxLRXXCGlR/oOynrN9I0nY6oruz41WNaH2/4WUNzC/w2MjZFV8UjSuNDEAV/KnA8CzHUhvoGvj1yHF0Kq4+wSjxRYLtqoya6haYkSXIIopfyKOL7oXvDfy0TBlLeq5dytvMW5e8+dCPekFNXtdaYomLSwAaanxuSqFXLLMp5s6OvlQ11SBbBVprfToWQbs/OUbL2gWddliPhMK6y+rog8erq7xY6pZxkZLg+svjRnUddfZ4BR26ZmH5ma8FDZzNMXOpoQdI97QaiD9KP4e8yWfHtIIRDq87OqhgYliRJB958M9Q36qGKI/ZUTTmybrUDlN/VlAMunIfIKJ0zvijiIUmSPI7uBl1Xh3aS2AX+VMcp50NEVd2LgY+73IrqTE9mbZTK1pdT5rHK30M01yrRrNeec/xl0AUBzJKGHxmrzEvga5Uok4rq6K+iGzJHNw5ihyTGdNF4VPSFzfH8tSnPOZ8Tvtzxt+peONl6xDDRCX1Dh4hi0/kODcQ8SPIT7MuIdJH5KBxbM17QhNS/H9amiZoXRvHQFw35XOk3YfZ/GF1TGduhcdpZWf8Wn4NK0/QXSZJMhQPuEfhUrTjnOeSX0fEL5Vo/BWdtOZ/TdCV/VJEXaV2jtg6yhsv+VB0525mt+e0C+N9sb0l2qkZvhWKDTJQqyI77ujIL37jLLWVu14T6q+ha6gWa3+6An9KWlpegrAt5OcbqU7uENzAcR0g6NdvSWcTUaFByyOcUDLYeMUx8Qgsk3cOl6KuOTmT5PA/KPUPE22mRndkzb/8ZeWpkf44PIPLrBWmZ/ZX1NoBz8lMFinK1IpD2ggOx/BY9DeUpDN7Yu2GtmortXgsn5IytMNmGKlGtgjujoZa5UBFHY0o6Os+Ab5Acvj0ajfZj0m/75WxHN9ZZFi0Wc+gYU6ThrRoH+k44Jmfoypx1Y4Uu8wPo9pW757aCpU71kzPxpEYgHYpu65jo8lX1W2Eza1WapuMMzv5F7lMv+rOysvWIYSohdBdblO6xxE/s9GjeiqO9eDl0maiJCdsUUXEHrc33NL5JBCvLeeiqU/mNYinZVpMw8sZiR9fPaIRuv1H5vaFx9k4VoavLYaRGVOmGk1EHaT1FIwSKsERjySMl5Fw05J/J2ea9mob0BEN0EyG662TDvCKkOP4RSD55JvJP6Zy/P6WM7n8fchDJnBmpzF2a3FzbIERfx9vRHS2/sN2sWe4cTVqHDZUM3WW5WxPZuVeSJKtzSiVJ8lmRI0npKr0XuZOcu5Z9JiGO2HpUW4bUwPeVCUhoC1KUrrDUT2Tp3rYr8blSRRKsS79T8h4RGtUsm/RD8Fs6RZo/Gr9PhcWnHValQ2Di143j9jIap4/gb9UH41lPgdSL8eRGIWLuGQixddFdKPOg0p2k6xY5HccwHhaoqyCkZJ+Xr8Pq9i/4J+m6kXTZyG1cr8nPcyRSETyGdAt5zuHiXJylacSvRjj4X/H3WFgfdkFSS1tGaBdGoIvRNFhtxknYn8xKiGo1x8/ViHZ8UCrz/hDmZco8BeJL7q78ICyFt8B3aQR89A5GfZLzHt2IYV8OVLZ7C7KXPw1L4PG4dnv7pvZQ7tfFKIeapuF6dFmup6k/2fFGh8VRLdgbASvz8PxZCZH+Q0PuLmaAElog6Rw2Q+AjvHSOoDrn0RDoGitVjD0IE7w8Ltn2aJwywXIqtiW/uQ83CAOyWOeukwSSyq0GUTFEUx/kYxgqNUCmoSMI2z5D+e0BhFfL1rAh6GYk+JtchZw231CO71Tp74dRx+Rxx0ZSMTKBdLyy1l5SxuWbEPUnR72p11iI0NPgwyNzgMYhnjzuNV39bbM4TfdBSJ9j6dq8GudULfNBmPLKrHvBMAm1FzAkzD1KV9skw9h8urb/KERaqnmJ9lO6QcdI39Uyt6Ou9UEI6Z4l6m/fQpnPlH4bkWNtu8swLxjNTuzWCqRhTDxflqyWMmoCUWdY+NaT0BaVZQG2EcpEqbMgxaqHWWTVUql7SycWsyizZejuIViDZE5B15nOZ0Tmj5h03CmNwbUUU5YXyjR2WZ+Uu2ep8pmV2TTwacaN8Kt6WDPvUCmvk0p2zacgs7Zp27vDEieXcR0PkfRBJITU8SFYLrJ7I6vTuut5BfyXrs+pWzMNQ4HY6JPqyFJpWoY69jKE5yWoM5tD9Nn8vrIyb+eQ62mmZpmsq3SZdD7U4WlkpuP8nKvJ4SWzyDBkyVJE533B4N+YMUv6vhhdV0vxuTiLSgRZ1+9KqQ7pnltnwXplq/N3ImDgSssyQWBxFI6SjcB7NO4BhPvw9z4bZHFUX5KG3bm4KKJh+amyztsKOlbuAAdNmaux7SKsj7dY+Y37R4YMvXrcz81w7Cd7jrWhEesXJZID9xB0Ucl5jYbC50H3DNwIPjEd2GY2Yv5sTRZrlZGK1Scbdb/T8rwdjf1kL1p9moZpQzTG46RlF6MLMC8rdxusBxvjewPnaZaSNHB9JOzrQEP8L8mfRj7XKY5xmWdi0A1R30ZA5E6XkiXK56IN821RmmPh7zUW1znLQfS8Q14lHQnKkGieoQnOm02cuJAN1zFOuh5L0Q2rZiwnWJ86lDrV6djNOQz72hDXLIXgmov6nKcBRsDiup5UNxchym61+EqSRK3DDUUAqfdgG66rLX3ERNT5zGK7HELU57oWhsXRKuogJJJVL6X7Kj/Pw3N6iWE1LaGORzd6dcjt1YViYVNhqGOiSN1Dv+4JLVc4di/2FbyJXsbkgy6kPQ8XC+CrmgzIrjQQSTYjZ/l5FuuY67l24VX4s+goag1dYrCc+ZJWEDa+qGCZe0qk8uhxvPYmupVIQxN5163oPUgQcLHTC2hhcRQH3VuHA4eka4sjgu9R0TrFDABCd7HFeqA3RyBxOC3DME2CxVHtUH0rCdZWdsxuUUILpLImfxO+Yf7ly8MiiWGYimFxFJ+CT/ZDDMEX/2tIY8K0AFXkQSqKTtT4Jopk/zeGYQYULI5qyZc1hXoIQQ9Mi1LHLjadw+dAHIuNYRimECyOaolIErqnpmDfHewnptUJLZBC3N+6Mvn4IHUFSjtQqpstZwiSpiHKlU0M0+q41PVm3xMsjqrH8cn+Nc1vd3sm3GUGEKGdn0Pc4ys1+bx8n1jhnnRCJDk8OOskOFzLUrTMAUegZ5iguIggF0zLxar7LI5qywTk6FogtSfjLFG2TAsRWiCFsNj0optNLpuP6uj1zI1Ta1wf3DGFmtg2iyRmMJLdVyHrP4uj5pJdScMTU+QDu3RQnAhmLUJ3sYXYnjp2GBkGMnXBln23GNwVxTBMYPipwjD1JbRA8klOqKILz/cVSFEGz2UYhmFaC7aJMyqhBVKILq2Gxursa4UOY0Fi6xHDMAzDDCrqmCgy5CCzsRJXMgzDMAzTwoR20l4OB+syXVshu9h8x416HbYetQLjMKL8KGlQUlFHxxDRFCJ6egAcY5s0hFQbcoMNgdW2J2APQWOAuca0SQPtJhjMeAieQ6HG7EsMlm2m9RGDT+8kRVcTBmx+DsOMyAzBsoJ9iOgdaMu6pPpZlja0h2JswGscn10bYJDwFcoxPN+sMQYHCjHGOIvxcPUtZ6gHpCtvIaIP4GZaiXIPC3hO2pIkEY36jxxuDHFTvBcj41PAh3uCm1Qc371E9HjB9Ucj8dpENGKhGx1xvPcR0TTpN/GQ+7zhAXWtw7k8jIhOIaKF6LZdHsH6mvEGIrqKiO5Ufr+OiI4lojnY9whJIHUHeviOwAC2NyNy58UA2xQcREQfwX2QvbR0oOG4kIieKbHtC5HleA7OwQjcd70Bh4AYjm3dRkTfJ6KnAm03Bh8lot0x4LOMuO9eQnLD7Hl0KO7F5zT1WYS3/x+OOQTvw3AdryjbEmXZlIhukfb1LiJ6KxHNj+AaJOIPs+t5PxHNXGPm2svvRkS/12xHZNA+TfltJJ6JYwKXuR9NI/LfRPRTIjpVfo5qBuI9FMupXE1EH5d/M5xscU8dTkQ74G9dMmdfEjyzf0FEfwuwPfGsORAR9dk5WYeI/uqTtypGmH9XyQrSg8obopKVu5DFrEdnEtFFWfhv5HxI9+Q06mcmSfKNijKQ305EH4Z4yOMEIrocN1xMNlEEUvb272PZ/BgeJFXyT41AyoTuppHLsR4RnY3ps0R0ScntnQFRYUJkKH5ziXt1PXyWOi+2sH3pXv4EJmF1/EqZ/a3er/R/IIRA2j/Vv5MJwXGZZEVdT20gFSYHFEiiPu1tmf+w9P1ECOo1iORE/TucgzkF16vcymo4/pNwXvfE9bUt64MQHL8konUjHJLMMwEE0tmWgYPPQH2/rMgGQ78Fh6g0vUG6xlYRLszfzueEOJKXEA9c3RQI23meirJUNTyLsFJNJ6LxOct9h4h+VoE4ooAPr12bII7qhBA2V5Yoz0YOI51vmyTJOab7xWHqK7Hu6smGZnlhsfpDqOsUo+FP9P+6E0p6ktf3+LMc693bIV7LsnuOOJpLRD+X/q7Sd/QAiLOiL+RV907Y2IaInoggYk4mojtCbtdQL8W/hmUeJfl3yWZE9PWcZc4qWt7QAqlPE8lWtLHq07xNDi9RHj/cLUBbENE3XRf2fUg7cjoRHRViQwXZBNlmTcd5MBH9l+t5qNE0pYqEmJrjTWt0Dk5JkuSHnusekSRJh4M4+UD0kxwe0Q30qzBbrd7lS2p4bs5pfI4OsLv9cubf2WTBIYT8VwuuUzd/NNE1/+uA29tOfabnkSdwHEROGd7r0EMwsWj7GGMsNrXi+DhYq/mUOjzLE2YsNjufDmWtCfAWfHIz9ovpqCRJtjaIva9FEIOxEQ+cfQOeH9t1U6nT2ylBeJ/isd6pjstNhi/MQOMIIvp2iDI38Y74Gdkbt2MCNHqH5cyfljPfG5dGG/+2LLAs4e5t2j8D+8DVwwvlWD5f9NiajK2rWKapAqkvkHlUFVm+lqCQzmQmdvJbrRS62rhrkiQ7B2qgfXmXZr090FVVJSHq9U6RghhcqGOC0+/iTduVvSB8XDmiaUdWjrNyuo8caVrgoHA4v8syfxIaXiM5DedmCSW7W+YvTii5V/mtPZTwaFUsx3x2QsnokudqTBPuxzLP7LegG9eFY4hoS9cNxxisVhUlPskjVd8hX3NmFRakN1rmrQwc8dQOa5runE4ItI8yvEGz7rGO21tCRDcgoqa9xDnbIJB/SN75fB5htiNR1hTW0nZNa9eAlXGYpi6r6xKIM80AABfuSURBVIm+9CcDlD80IgrqS/C3c+GDBfd/KPzYFtXw2PMQzux/rncRrYhIzvdYFvgQorN8OCFH8F+vueZPIwqvaHRjA+4Yo5T7bAXuZ5vAj91lNh3HM6rgeg0YHSbBnSOPDeDkXmb8uPdIQSE25sOB+3GU0Tcdz/gckZ6H1Xqk2AASROR9z2XDoQWSzoLkI+PVyurbxVaFBcnEQ4gAWBg47LOtQufzEOzpsI2bEY2xpEblzrvZ/01E/1NRWWzchQfEJh6iciUar51hCdkmZ3mdhVBHh4df0Xg82J0eXA48izL0QsQWoRfPra0hCPfIWXcviN9QwSVVMw2j1Zuccd8H4eHT9Wu1PmmiNQmpGy6McA5ELrTzDfOKHltRk99/B+hKPACW3B1ylivbq7GtwzK/wUtQqFQaRvJiKBy6cFWOaZZAokCiRLX81NkHyXSjfEsKfV9aQTnymAanu/U9GtIUbwvvRyNWhLE5y/6AiD4T/GjLE2LYnCp4FVFAc0vs6xHUjdvg7GhiIsR+Xn0WVsONPcpxZECBtMwjR5fKo8idcklOHR2H8zLfskydWYLnw8cMZdwE1+a6gscguljfbZk/i4hurfC8fA3pIHT+dEbBY2igiwqqfitayewvIiXBjgiHf5tlubJuLhvkzL9Wl4YhBg4eICK31uYFd70HzmOupT6GQAo13IiMr/mzmZEGVYizItyMxG9lmOshkGwIEfKNZpwMBwaKlS6kv9Lh6N6YaJj/kqPY/5Dh9xl4A/6GoQtzLzjG/6lAmU2EfLadAeuaqRtqeaCBupvJ5RaBRLAiFRVI++bMv7sJx/u3TCApja9vpLQrSbbPACnyTkyS/lxppm2VfXbllfCcktsPyeGGbYm27i+WNCMnubgLxMgGrIoSny429QL7WqVUk3eVXnvNcvA1EaI8oetLdw2FZEae6Xh0dUWpjN6cvEUuXUg7WqwGtyBLuC6rb0Yz0lS4YPPpCDI8i2g8Y045PKgka1R5t4cl//ic+YHSJNhRzunw7LtCZYERvnEx0jGsdqw31Je2iPVoaZLQAvm3WDhse2MkRtVxMdLvmPzYDnfRAzEEkto14WNRUrfh28WmirWB6iMQgjqGdPQ22U/MRl5m8DpGmoXgQcs2XHzpTBZGISB+gu+/saz/8ZoEHKjcn2M9q/34dQ6N30/V3yQ2LOh4v31ON9BcvOGXKa/TpGBqSyq9fkWFhWZ5230a2xq2BjFEkuM2DzH4ij6D0SYIQ8Lo2MIlgCiGQIoRxTbS00M+hFjzhUe5zaezCic/T2bkmKqrrEtVYvOtGJ5zH7ZbEgveLQ3u+QisSTo6PJwuq6DLUlfbSwvmeuQGm6Zef0WAvK+AMDk4Z/7Pk4R6bMtEItQLWekSuh6jYTlb+xJrnEgjTaq+ptxs8guYzcfN1D23mhgnMkQUmypsfAc1VW+GKisOC6R8kppatggWpJmW+a2bZMVM3n14uGVMtJuVv6datnNkqAIHxFZXywukevBSjl/QBxDZ50Je9uxm+B+RxbpS9H4O4t+aJyw8hUdT2p5QIslxOztgIGEd10i/zbT4NB6UN0RWXZ20Qzk8NjMSSSTamo1+Ul9hluXXEdv5T+DyMfmIcdh2MSw1GblN2gKKJbGdNyEDtc1Pp64cZyjXfI0gmoZcN7p8K+9B94ytG8FK3mDRtcrmXq/M8pciJ5WJgx1y7GyXEw35YEFH/C3QGHbBgtmWIwJ6IGAS5bduSx0t2lYEc9cwOW7XdMAB60tSWSf0AsdsqqPCOv0P5bfLDAED4xGYcLFpJ3UVSKEqXxXdIKZLerLv0B8GFiOp2tk1yxekJa+BKkITG7OfIDmiLgHmiEADeepYJ9J2+wl5bSS2sThY/wr1V0Y45//IkkvqyDICKQ9xDgbIkDdV8zu8jG1l2O9RDgIpz3p0e4FjOlJjfYxBU6MQVWFR46q5Mq9dDRSpZ90FEX3CMO+3mt9EfXvNkL7gcJtAqmsXm+r74VtdQpQlj6rMmSLXymloaGxvZ6UQDUeIKXSZbPNCTgrdSPBWKWma9sQ6rkjiiCxv5pSN96XB5qx9kkMOrVJEPBfu1LMlNDm2EoZVycs7kzfArWvuo3MqEkdUh5fOKiLDAuDkFuFzDAXW2ddQB/tg9VfptFjkxbbebtpRFU7aIXyHyFPcqJaoGF1uz0XYZh632d7SQjSkFTHEtQ7qyhajvJpzMiS0WHG4BsHraQXX98OG30WyxQcM8/5uGYF8XUSpRKUWIql+mBzoCc/hkyzzt83JfySsgk84HLEIY7+gwjPjO5QKY0AneAI55Z9u+P33RPSCYZ7tZczorB1DIHUpf/t0l6kNRKdnd1mIiLo8/qbOr6gh/X5NRE4ZeopckyYdZ9ExxUJQ19QHJg6A75SOG3PWtTlrD9QBbN2or6lADKPzR8v8Ay3z8rrXfuGw/yNy9hGaxy1CnfEk0iN6nCXP2k8MvxOG/jKN91apQAqRgVgVQ77CRl3P+YmUugudKWmazmlCw72DJWPxQKGuSSIzxEDE+zdhvwMthYCtSyWv4ZmG4VJ0HInEk0z12PyM3mYRQjZhk8L6nUeVeXwansNmDJShiJpCxGbwcEPk2QKHAW9NiUmNQQUxnLRD5LVRK5+vkPOuxIm7c9EK+F9Yk55FIm/QwrpTeb6OgrzFsvjDsI6s59H9q4uyIfy9Lrqe6kiquS02xojtOm5yiL4UzrFXWoYveL/LmEllSJvhsF1/B/G7LVGGhEjDPyi/bZ6Tw+pmKReWDZ+T8woCJ8YVWOcB5NKZ4bG/4C93magIUDVivqXn+iBFthGYUoDc5jAM0m149g7TzDtWFzwQQyCpXWw+qG/Qvg2p/5t4MVf8+9H3PjXASMpFMOWBYMJgc4a/j4i+M8jOc5bvR/YrPNrwwKECY3fdaBFIn8TAzz4jyTvTFJFUbzrhrG0KUjgMEbUyB+Y8q11HszfVJxtzMbTJTERUjkFb1Cc16OKBPjRN+4XUy0lCc9TtFWjcV1eW0NVGlKHkNmO+eFrD/COLo20sAvwGh/XnYqij0zTzjkZ9fln+MYZACtHFplp+fB+O3l1shPDyAl1mTyM3zt7oQ+/D27F8g7ZB5fYo+XOWQMy1oQFajjfvj6KBMLFhkeNhCmMTu6061IiNUXhLl++rjxuWLzJS+3SYv3VvhxvDx6nsQMu5VCaSBo4Q+61FIG2nGVj4A5ZtrYATrQuOgRtr/LkzHHFFQzejglO8eg8xREFJkeQjMF0xhvlX4F1i6sqfVSB1xC0GgdSB7rs1IjhjCKQQ+STUC+ArunQZud3xS+jwZ0wh+BsEl6krbXyx3kCmIKbuBWYVe+KlQEfRgUivt5jPj65CIJG/SBqBwYvzTPxVENLSJiLOHrMkS/2QJJC2RBLJtcAj9Ofq27kFn2GlBJMgth9O0/4uk9nZDJdLWrf4FtfyaI6tcgVe0bkz+dzeVGAbd6FrVRfaf4wqkGKY4tQb1CeKLVQXm9rdV9gnqQZmd1OINKG/fSCPKh8kXX8kRsK/iDFjy7hcVNDcDj8SHccaknVGwWI1Ns0Y4vyyGf95EjoC0hYZJLqgh4vTlaa0Dz7XmoAugZ+JstbZ3TBg6fnZD3KZAlEb/0nTebdci+D7r4B3QwDruL7g7k118V3I2r6aGBdZtSD5nD5VVPk+VZqaHTUQz1s2M7qgU2LdCNEdG4t188bpaVFGOB7WWEs223s8gha6MCSAjuEOyQeDohFJI9HFqKNOfWYb+axkaVR/labUZZi3SZr2ZyE+SuOPJPP3goLZZkH6LhFd7ridczGm4hqRdSn+NdLXJ49GvtltyxYOy6xFaOFUodXNZD36K6yGRTBZtxMM87SaKvIg+Tw8VAuS72Uo7TBe87xCbQUa8RBhqaEtPmXGqYvNOgMgyi4Ge1u22SW9vBxkGRKliLVAxpYSwDRydzSUdB77QiTp6HZqMONbjybkRLYaC2Ap2qvoHjNxGoJTtrUs4xLaL2O7756HX+anHLc1Ht0qt9teJtPiTUwzBVJ7Tr6pwr02BSxQ62b3fYVNo3gxeZ9h3p0e23va8oxaYz8xGoAQ4Y+qQPLd5opS/jn1EEd5bwqukXoTYbreznPqwHoh2dTi39Bs8i5+XZRzyHKMzRla5SGpC/0zhmXm5XTL2Jhu8SfY3iEJoUxoMX+m5WXpGQzI22wuxH2qJU1pTJrSSA8rQtnhPvKShaq4+CBdhki1O+QfU+mfgvCPWmSJlixK0W7AYIPbEtFFRLSZZf6jJbdvlMtpSh1pSidU3DQeYBhHTbyY/Nhzm6ZuuZ3kxJF1ddJWK5Pv5ejESTQ+NGzUwHo0Kme4hW40SORgqTtf7pOPhM9D4EpE/a3Am0nZhm04BiacW3I7r1pyZpB07wyXHOUzXxRdxUmx3GgsozvOBkTKAhyDCyHNEnfACmEiS9cvhPI7DMvcVrLr9Ho4S+o4RpN7x0TIl79r4JC++pmg+CbmC4j41qML1MGxNY+vZz0dye9BwMgeHuv+ydQFYrHa2MRH/3VNVlX7ZSml70W9uFYVVobtX4AR3I/DyO8u5VmDxO+WC+XPKMr/Wcv8l1Bfy5D3DD4PY4I+G2i8xLHokp9lmG/qyr+3gOO/ikgL8HUYDlQOySJwYwikEBakUFlKV6CRywSSe+NbTByNVnw3hkkNl/x9qPR9uGb5BMssRATVxTkN1uJskMU0TZsyPIXSUOgehHn1YWe8gYdsQa4LkGX8VZjztzbMPxkP5uxhnuJ+Gpoj6EdgHZvD71eIaIpjOQ/BA7HTMwPxSpT54Bz/lfuRQ4Qs0WaEEfrLIMJw/wmLkYo431+CJSCPbSHoXrR0jdnoxfNif10dkITSi3ijL8txeGDPgQiw1aGsrrXjGSeGednI4ZHlMsyHiV+7CCSNyDANVGwj14Ik9iMJlZtQb652HBpoKyR6FV2DJxYV9EW741DOn+AaP4B65dr2prjGWyKNQl5k7YUBIhlfzJk/2tdyY6mjZxnyym1qGVrE5LPYT847SYoXmy9o5h2K53R3DIEkd/k0Ao3F5ks3Kn/W9+z89lTgFhiBTL9bSFnE26UGP1i+HI1F6xXp/JrUd1SkMi00jN8k3vh3zf4wRAXWNTHMX+TGUTn/HTrLZKCoxyL3zFjPoRKcQeh7/1tcmqaJaqmQeBKh4WURXTLna87lOnAIdunCS5CFOyppmn4u7yXAsU5sjUZwS5eFPYzbiywjmrtwCxJ2FhEI4gXjlx77csuDtGY5evBS9EtYB8Y4bEI4/r8T0VELC5axwLBV/eVsh9/eQQX3U4SH8kTD64W3Fv8R28xImIwXJxvE5Pyc8QJd7pEbk0QrkCagLv00dph/w7PLRFX0VsFkcSrrVSIwUmdntGIZVTMz4whMWcZhZ3HkOdK+PCTFvwsky4rBDQYBerl8NgONdu91/jym7xYdYy/QfvsqGvDY9Xx/Mk3TGfh+kMUvzjZidhFutJzLjxetGxE536V7Tdg6HJ45vZHDtY9F162lnNZ//04pvbmg9eTnnqMZmKIFyUGY3I7n8cWO+5qQ44Ruom7jSC4rEumZc63vTSm9xTS3YkzO2b8NkHfs0TSl+w33VP9A2TEEknxD5I7bYkAdz63M4J2yT1QMS0XqIgJ9Gn0HVH+MK7y2Uh7xpvhFw1Zm54QAF6bChvHJJp3TOlnUpihh1abM7n0lLRQyMy2OvSLB21tNK0a6z3TcCF8MO/XImn04xlYrS5HrK3wjv+25P1sXm6srweeJaPecNCkZh2IA3iJEHfrGg/c6HqsrwrKitWTniKuQxzRZ7n1QmBpoH6v9tZQXEHE+d4ohkEJ0j6mO3mWeMpWGY1b4ZvsfOCbKTEvT9CsVWRUyxFvpPjlvVN8u8bBsNqcVGCKh1TgX/lAZm1nGp7sr8APa9lbv3aXoUb91XAZ/EgeaKpCEL8mOBcZAy+NO+IC5cHqJN3ybBamIMBF+RpunRBdknQKmCcM6GVHXq9lQQ/sFHL0hQ7hs7Ain70LkCagCQsrknD0zYG/JVF33KoTSETEEUohwxuUaS5QvXhE1/ZfQ7WGapGnaFtOSYdjv59I0bWj2OwWCxZSVOGSZLkvTdCPHEbq/mKbp29I0/UfMcgHdKPll6tABmRitSHiGDAn2YRayEV+grHuCpWH4QeAy3GFJAHeClP8rhh+l6fosStP0UOccPMWsR+F8FVf9OzeldFOPJHp5fBNv9fcZlnsWdafMG/4awQaKOEl0IieHcyHuM9+aZRBv2SS2sVGOgCJLmZo13Zeuctr+o0/ZHBD5gt6I+v5cieupRRFMifL3iJRSUzBI0czZNhZa6uoxsZ20fRum5ehmy4bRKBP6LVu0YnWxLUECLdsbU4Jzs1JXDgdx1YZot3no5rAlyLoPFXt3RIl1BLLsZYPpPo0Mpq8WWTlJkofSNJ2cpum2CJueUOSN0NHZdT1EXPWD89qHsPl1EflHaFjH686Lbj9pmn4EXQybRrRKCrE92tD4CFPwv6S0DoRr0Y0HftmXnaEQZo8mSfJXQ1fGX+A0uUCJzFyJkNvQnIC8JEuk7TYQbTcOjse34r6S62IbfsvWK3PfZ8JlOhqiWF0rNyM1xWKHZddAehvPnhH3x2jQJB7FS9gmwkIjpboQdfOpPJcIh8b5q7jX1ES/Hdi+D3MQhTdKU4Q2SxvzMJKnrpRSdYhzPEOzrHgZ3wvbW4n13oH1yriJZCQ41y+jUbcNQyUjrEv/hfshO/Z10lVO3WvtQKEXFtMrEC2ZpWIJaQ3ogFVIRpzjY1JK5TqQ4Ln9pMtGC6Rj+Coin+V9iWvYnjTCWz22kiKqetBQF7VmjEKFzt4SRbr7ozzLIx6gh+H7J5B3J5+0QWnacHm2JihvXmhugkanN9toQYtTgoqpfUBnjXoTHFULRW6VKZ9PhBj2lyj5ilZvEudzrYejuq9mnNdmUYPxB2uN8/lJyhou3bB1VxTJ2VOVA26MvdiOstXvXPXYyxxvK935nvmq1iCGBUlW2n2eylms0xOoTZK7K9zf/pI213CRtIYRDcyapBrHf4ZhGIYxEkMg9UDgZEkRbWnLTfQG9EGSu1AK9fOLN0VHKxLDMAzDMC1ELCftsv4ufQF9h/x9BoQVicURwzAMwww6YoX5hxj2YoXhe1FKOcet8jcYPP4nDMMwDMPEEUgrpCifMl6KfYbvPuXJKH68bEViGIZhmEFHrC62LNzd10mbFOfqUF1sXjmRkiTGaWIYhmEYpq7EavmzqK4yAimGD5KaV8MNDntmGIZhmEFFLIG0KMA2ZAtSGT8ieTvex8u+SAzDMAwzeIglkEJkbQ4lkMLkKGJfJIZhGIYZNMQSSCGS8oUQWaSk7i+lcNgXiWEYhmEGB7Fa/BDjFS1xWMaFYAKJfZEYhmEYZnAQSyAtlz59xZI88GsZ55+Fhm16wb5IDMMwDNP6xBJImc9QmazaspjpsSyXRyhfplWwLxLDMAzDtDyxLUjtJcZ7k7vG1hptvQDBByllKxLDMAzDtDYxBqslKd/QyjT1ttrIOYvKmGxkgRRG1biP9M8wDMMwzAAklgUpEzedJUSJ7DtUppyyD1SoyDi2IjEMwzBMCxM1k3aaltq+HMVWxgcpRETd2rAvEsMwDMO0LLEE0mv4LOP/s0D6Xsbys1z6Xt5JW4KtSAzDMAzTmsQSSK/gs4z1ptwo/K/TJQmjoAKJrUgMwzAM05rEEkhZiH6ZrrFQ0WfLlcFzg8JWJIZhGIZpPWIJpBfwWUY5hPIdElajlwJv83XYisQwDMMwLUcsgTQfn2UGipUtSGWFTRYRF7aLDfAYbQzDMAzTWkSNYiOieSW2ITtml0kUKfgPPjtLbkdPkkAkcVcbwzAMw7QCMU0fTxLRsyXW75IUR9lyZl1sC3KW86dfJA2JtnmGYRiGYaojViZtwW4lLT9d6FobEaBr7Coi+p0S8h8e4bDNRiSGYRiGGfDEFEhl/YZWoJsthECaiYlhGIZhGCaXOnsXCz+mRfgePDyfYRiGYRjGRJ0FUipl5I7bNcYwDMMwDCNR9/j0LDw/VNJIhmEYhmGYXOoukDILUpzwfIZhGIZhGA11F0hz8Fkm4STDMAzDMEwh6i6QluBzUc5yDMMwDMMwwai7QFqMz9dylmMYhmEYhglG3QXSM8jGPasGZWEYhmEYZjBARP8PnAgiL3U7XkIAAAAASUVORK5CYII="/>
                        </svg>
                        </div>


                        <div class="form-group m-2 pt-5">

                            <label for="username" class="text-white mb-3">Usuario:</label><br>
                            <!-- input type="text" name="login" placeholder="Ingrese Usuario" class="form-username form-control" id="form-username" maxlength="20" value="luis"-->
                            
                            <input type="text" name="login" placeholder="Ingrese Usuario" id="username" class="form-control">
                        </div>


                        <div class="form-group m-2">
                            <label for="password" class="text-white mb-3">Contraseña:</label><br>
				<!-- input type="password" name="password" placeholder="Ingrese Contraseña" class="form-password form-control" id="form-password" maxlength="20" value="luis"-->	
				
    						<input type="password" name="password" placeholder="Ingrese Contraseña"  id="password" class="form-control" onfocus="this.removeAttribute('readonly');">


                        </div>

                        <div class="form-group mt-5">
                            <button type="submit" class="form-control text-center m-auto w-75" id="ini-sesion" >INICIAR SESION</button>
                            
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>



   
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    
    



<script type="text/javascript">
$(document).ready(function() {
    $('#login-form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	login: {
                validators: {
                    notEmpty: {
                        message: 'El usuario es obligatorio'
                    },
                    stringLength :{
                    	message: 'El usuario es de 3 a 20 caracteres',
                    	min : 3,
                    	max : 20
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es obligatorio'
                    },
                    stringLength :{
                    	message: 'La contraseña es de 3 a 20 caracteres',
                    	min : 3,
                    	max : 20
                    }
                }
            }
        }   
    });
    /*$('#ini-sesion').click(function() {
        $('#login-form').bootstrapValidator('validate');
    });*/
});
</script>
    
    
</body>

</html>