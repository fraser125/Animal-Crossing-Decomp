lbl_80597D60:
/* 80597D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597D64  7C 08 02 A6 */	mflr r0
/* 80597D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597D70  7C 7F 1B 78 */	mr r31, r3
/* 80597D74  4B FF FD 89 */	bl aIDG_chk_water_attr
/* 80597D78  2C 03 00 00 */	cmpwi r3, 0
/* 80597D7C  40 82 00 0C */	bne lbl_80597D88
/* 80597D80  7F E3 FB 78 */	mr r3, r31
/* 80597D84  4B FF FE 69 */	bl aIDG_calc_direction_angl
lbl_80597D88:
/* 80597D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597D90  7C 08 03 A6 */	mtlr r0
/* 80597D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80597D98  4E 80 00 20 */	blr 
