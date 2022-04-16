/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#373436",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};
// find a way to make it more customizable

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
