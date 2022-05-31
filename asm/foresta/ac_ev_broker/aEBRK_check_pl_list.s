lbl_8051A0F0:
/* 8051A0F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A0F4  7C 08 02 A6 */	mflr r0
/* 8051A0F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A100  4B B8 0D CD */	bl func_8009AECC
/* 8051A104  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051A108  7C 7B 1B 78 */	mr r27, r3
/* 8051A10C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8051A110  7C 9C 23 78 */	mr r28, r4
/* 8051A114  3F E3 00 02 */	addis r31, r3, 2
/* 8051A118  3B C0 FF FF */	li r30, -1
/* 8051A11C  3B A0 00 00 */	li r29, 0
/* 8051A120  48 00 00 24 */	b lbl_8051A144
lbl_8051A124:
/* 8051A124  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 8051A128  7F 63 DB 78 */	mr r3, r27
/* 8051A12C  4B EC 60 19 */	bl mPr_CheckCmpPersonalID
/* 8051A130  2C 03 00 01 */	cmpwi r3, 1
/* 8051A134  40 82 00 08 */	bne lbl_8051A13C
/* 8051A138  7F BE EB 78 */	mr r30, r29
lbl_8051A13C:
/* 8051A13C  3B 7B 00 14 */	addi r27, r27, 0x14
/* 8051A140  3B BD 00 01 */	addi r29, r29, 1
lbl_8051A144:
/* 8051A144  7C 1D E0 00 */	cmpw r29, r28
/* 8051A148  41 80 FF DC */	blt lbl_8051A124
/* 8051A14C  7F C3 F3 78 */	mr r3, r30
/* 8051A150  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A154  4B B8 0D C5 */	bl func_8009AF18
/* 8051A158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A15C  7C 08 03 A6 */	mtlr r0
/* 8051A160  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A164  4E 80 00 20 */	blr 
