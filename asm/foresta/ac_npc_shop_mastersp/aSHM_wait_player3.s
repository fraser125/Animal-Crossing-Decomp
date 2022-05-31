lbl_8057DD64:
/* 8057DD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DD68  7C 08 02 A6 */	mflr r0
/* 8057DD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DD74  7C 9F 23 78 */	mr r31, r4
/* 8057DD78  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DD7C  7C 7E 1B 78 */	mr r30, r3
/* 8057DD80  4B E5 FB 35 */	bl mPlib_Check_RotateOctagon
/* 8057DD84  2C 03 00 00 */	cmpwi r3, 0
/* 8057DD88  41 82 00 3C */	beq lbl_8057DDC4
/* 8057DD8C  7F C3 F3 78 */	mr r3, r30
/* 8057DD90  7F E4 FB 78 */	mr r4, r31
/* 8057DD94  38 A0 00 14 */	li r5, 0x14
/* 8057DD98  48 00 04 A9 */	bl aSHM_setup_think_proc
/* 8057DD9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057DDA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057DDA4  3C 63 00 02 */	addis r3, r3, 2
/* 8057DDA8  80 63 60 CC */	lwz r3, 0x60cc(r3)
/* 8057DDAC  28 03 00 00 */	cmplwi r3, 0
/* 8057DDB0  41 82 00 14 */	beq lbl_8057DDC4
/* 8057DDB4  81 83 00 04 */	lwz r12, 4(r3)
/* 8057DDB8  A8 7E 09 AC */	lha r3, 0x9ac(r30)
/* 8057DDBC  7D 89 03 A6 */	mtctr r12
/* 8057DDC0  4E 80 04 21 */	bctrl 
lbl_8057DDC4:
/* 8057DDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DDCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DDD0  7C 08 03 A6 */	mtlr r0
/* 8057DDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DDD8  4E 80 00 20 */	blr 
