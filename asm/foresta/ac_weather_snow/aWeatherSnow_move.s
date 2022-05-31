lbl_806037E8:
/* 806037E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806037EC  7C 08 02 A6 */	mflr r0
/* 806037F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806037F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806037F8  7C 9F 23 78 */	mr r31, r4
/* 806037FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80603800  7C 7E 1B 78 */	mr r30, r3
/* 80603804  7F C5 F3 78 */	mr r5, r30
/* 80603808  38 9E 00 0C */	addi r4, r30, 0xc
/* 8060380C  4B DB 77 39 */	bl xyz_t_add
/* 80603810  A8 9E 00 22 */	lha r4, 0x22(r30)
/* 80603814  7F C3 F3 78 */	mr r3, r30
/* 80603818  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 8060381C  7C 04 02 14 */	add r0, r4, r0
/* 80603820  B0 1E 00 22 */	sth r0, 0x22(r30)
/* 80603824  4B FF FF 6D */	bl aWeatherSnow_SetWind2Snow
/* 80603828  7F C3 F3 78 */	mr r3, r30
/* 8060382C  7F E4 FB 78 */	mr r4, r31
/* 80603830  4B FF FE 41 */	bl aWeatherSnow_CheckSnowScroll
/* 80603834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060383C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80603840  7C 08 03 A6 */	mtlr r0
/* 80603844  38 21 00 10 */	addi r1, r1, 0x10
/* 80603848  4E 80 00 20 */	blr 
