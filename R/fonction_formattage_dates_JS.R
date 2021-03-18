# https://www.w3schools.com/js/js_date_methods.asp
# https://stackoverflow.com/questions/1643320/get-month-name-from-date
# https://stackoverflow.com/questions/24998624/day-name-from-date-in-js
# https://stackoverflow.com/questions/9045868/javascript-date-getweek

#' Format horaire a partir d'une date
#'
#' @return un char
#' @export
#'
#' @examples \dontrun{format_horaire()}
format_horaire <- function() {
  '{H}:{mm}'
}


#' Format horaire a partir d'un integer qui est l'heure de la journee
#'
#' @return un char
#' @export
#' @importFrom htmlwidgets JS
#' @examples \dontrun{format_horaire_from_hour_in_integer()}
format_horaire_from_hour_in_integer <- function() {

  JS( "function(value){
    let d = new Date('January 01, 1970 00:00:00');
    d.setHours(value);

    let h = d.getHours();
    let m = d.getMinutes();
    let label = '';
    if (m < 10){
          label = h + ':0' + m;
        }
    else {
          label = h + ':' +m;
    }
    return label;}")

}

#' Format horaire dans un label a partir d'une date
#'
#' @return
#' @export
#' @importFrom htmlwidgets JS
#' @examples \dontrun{format_horaire_popup()}
format_horaire_popup <- function() {
  JS(
    'function(value){
    let d = new Date(value.value[0]);
    let h = d.getHours();
    let m = d.getMinutes();
    let label = "";
    if (m < 10){
          label = h + ":0" + m;
        }
    else {
          label = h + ":" +m;
    }
    return label;}'
  )

}
#' Format ex : Lun 25
#'
#' @return un char
#' @export
#' @importFrom htmlwidgets JS
#'
#' @examples \dontrun{format_nom_jour_numero_jour_short()}
format_nom_jour_numero_jour_short <- function() {
  JS(
    "function(value){
      let d = new Date(value);
      let y = d.getDate();

      let wkday = d.toLocaleString('default', { weekday: 'short' });

      let label = wkday + ' ' + y;
      return label;}"
  )
}

#' Format ex : Lundi 25
#'
#' @return un char
#' @export
#' @importFrom htmlwidgets JS
#' @examples \dontrun{format_nom_jour_numero_jour_long()}
format_nom_jour_numero_jour_long <-  function() {
  JS(
    "function(value){
      let d = new Date(value);
      let y = d.getDate();

      let wkday = d.toLocaleString('default', { weekday: 'long' });

      let label = wkday + ' ' + y;
      return label;}"
  )
}

#' Format ex : Juil 2020
#'
#' @return un char
#' @export
#' @importFrom htmlwidgets JS
#' @examples \dontrun{format_nom_mois_annee_short()}
format_nom_mois_annee_short <-  function() {
  JS(
    "function(value){
      let d = new Date(value);
      let y = d.getFullYear();

      let month = d.toLocaleString('default', { month: 'short' });

      let label = month + ' ' + y;
      return label;}"
  )
}


#' Format ex : Juillet 2020
#'
#' @return
#' @export
#' @importFrom htmlwidgets JS
#' @examples \dontrun{format_nom_mois_annee_long()}
format_nom_mois_annee_long <-  function() {
  JS(
    "function(value){
      let d = new Date(value);
      let y = d.getFullYear();

      let month = d.toLocaleString('default', { month: 'long' });

      let label = month + ' ' + y;
      return label;}"
  )
}

#' Renvoie le numero de semaine
#'
#' @return un char
#' @export
#' @importFrom htmlwidgets JS
#' @examples \dontrun{format_isoweek()}
format_isoweek <-  function() {
  JS(
    "function(value){

    let dowOffset = 1;
    let d = new Date(value);
    let fullY = d.getFullYear();
    let newYear = new Date(fullY,0,1);
    let day = newYear.getDay() - dowOffset; //the day of week the year begins on
    day = (day >= 0 ? day : day + 7);
    let daynum = Math.floor((d.getTime() - newYear.getTime() -
    (d.getTimezoneOffset()-newYear.getTimezoneOffset())*60000)/86400000) + 1;
    let weeknum;
    //if the year starts before the middle of a week
    if(day < 4) {
        weeknum = Math.floor((daynum+day-1)/7) + 1;
        if(weeknum > 52) {
            nYear = new Date(d.getFullYear() + 1,0,1);
            nday = nYear.getDay() - dowOffset;
            nday = nday >= 0 ? nday : nday + 7;
            /*if the next year starts before the middle of
              the week, it is week #1 of that year*/
            weeknum = nday < 4 ? 1 : 53;
            weeknum = '' + weeknum;
        }
    }
    else {
        weeknum = Math.floor((daynum+day-1)/7);
                    weeknum = '' + weeknum;

    }

    weeknum = 'S' + weeknum;

    return weeknum;}"
  )
}
