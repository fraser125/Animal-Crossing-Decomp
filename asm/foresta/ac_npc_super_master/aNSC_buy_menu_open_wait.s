lbl_805839E4:
/* 805839E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805839E8  7C 08 02 A6 */	mflr r0
/* 805839EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805839F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805839F4  7C 9F 23 78 */	mr r31, r4
/* 805839F8  93 C1 00 08 */	stw r30, 8(r1)
/* 805839FC  7C 7E 1B 78 */	mr r30, r3
/* 80583A00  4B E3 BC A9 */	bl func_803BF6A8
/* 80583A04  4B E3 BD 3D */	bl mMsg_Check_main_wait
/* 80583A08  2C 03 00 01 */	cmpwi r3, 1
/* 80583A0C  40 82 00 18 */	bne lbl_80583A24
/* 80583A10  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 80583A14  7F C3 F3 78 */	mr r3, r30
/* 80583A18  7F E4 FB 78 */	mr r4, r31
/* 80583A1C  38 A5 00 01 */	addi r5, r5, 1
/* 80583A20  48 00 25 A1 */	bl aNSC_setupAction
lbl_80583A24:
/* 80583A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80583A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80583A2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80583A30  7C 08 03 A6 */	mtlr r0
/* 80583A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80583A38  4E 80 00 20 */	blr 
