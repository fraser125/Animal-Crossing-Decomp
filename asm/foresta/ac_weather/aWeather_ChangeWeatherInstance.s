lbl_80601C88:
/* 80601C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601C8C  7C 08 02 A6 */	mflr r0
/* 80601C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601C94  38 00 00 01 */	li r0, 1
/* 80601C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601C9C  7C BF 2B 78 */	mr r31, r5
/* 80601CA0  38 A0 00 00 */	li r5, 0
/* 80601CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80601CA8  7C 7E 1B 78 */	mr r30, r3
/* 80601CAC  B0 83 01 7A */	sth r4, 0x17a(r3)
/* 80601CB0  B3 E3 01 82 */	sth r31, 0x182(r3)
/* 80601CB4  B0 83 01 78 */	sth r4, 0x178(r3)
/* 80601CB8  B0 A3 01 7E */	sth r5, 0x17e(r3)
/* 80601CBC  98 03 01 9C */	stb r0, 0x19c(r3)
/* 80601CC0  48 00 0A A1 */	bl aWeather_CountWeatherPrivate
/* 80601CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80601CC8  40 82 00 38 */	bne lbl_80601D00
/* 80601CCC  A8 1E 01 7A */	lha r0, 0x17a(r30)
/* 80601CD0  7F C3 F3 78 */	mr r3, r30
/* 80601CD4  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 80601CD8  A8 9E 01 78 */	lha r4, 0x178(r30)
/* 80601CDC  48 00 03 51 */	bl aWeather_SetNowProfile
/* 80601CE0  A8 7E 01 78 */	lha r3, 0x178(r30)
/* 80601CE4  A8 9E 01 82 */	lha r4, 0x182(r30)
/* 80601CE8  4B FF FC 3D */	bl aWeather_weatherinfo_CommonSet
/* 80601CEC  B3 FE 01 7E */	sth r31, 0x17e(r30)
/* 80601CF0  38 00 00 00 */	li r0, 0
/* 80601CF4  A8 7E 01 82 */	lha r3, 0x182(r30)
/* 80601CF8  B0 7E 01 80 */	sth r3, 0x180(r30)
/* 80601CFC  98 1E 01 9C */	stb r0, 0x19c(r30)
lbl_80601D00:
/* 80601D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601D08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80601D0C  7C 08 03 A6 */	mtlr r0
/* 80601D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80601D14  4E 80 00 20 */	blr 
