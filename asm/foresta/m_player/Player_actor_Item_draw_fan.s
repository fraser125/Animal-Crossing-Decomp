lbl_804E3C44:
/* 804E3C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3C48  7C 08 02 A6 */	mflr r0
/* 804E3C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E3C50  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3C54  4B BB 72 7D */	bl func_8009AED0
/* 804E3C58  7C 7C 1B 78 */	mr r28, r3
/* 804E3C5C  80 63 0D F4 */	lwz r3, 0xdf4(r3)
/* 804E3C60  83 E4 00 00 */	lwz r31, 0(r4)
/* 804E3C64  3C 00 DE 00 */	lis r0, 0xde00
/* 804E3C68  54 63 10 3A */	slwi r3, r3, 2
/* 804E3C6C  7C 7C 1A 14 */	add r3, r28, r3
/* 804E3C70  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804E3C74  80 63 0D E4 */	lwz r3, 0xde4(r3)
/* 804E3C78  7F DD F3 78 */	mr r29, r30
/* 804E3C7C  90 1E 00 00 */	stw r0, 0(r30)
/* 804E3C80  3B DE 00 08 */	addi r30, r30, 8
/* 804E3C84  4B EF 50 05 */	bl mPlib_Get_Item_DataPointer
/* 804E3C88  90 7D 00 04 */	stw r3, 4(r29)
/* 804E3C8C  38 00 00 00 */	li r0, 0
/* 804E3C90  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804E3C94  90 1C 0F 4C */	stw r0, 0xf4c(r28)
/* 804E3C98  90 1C 11 70 */	stw r0, 0x1170(r28)
/* 804E3C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3CA0  4B BB 72 7D */	bl func_8009AF1C
/* 804E3CA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E3CA8  7C 08 03 A6 */	mtlr r0
/* 804E3CAC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E3CB0  4E 80 00 20 */	blr 
