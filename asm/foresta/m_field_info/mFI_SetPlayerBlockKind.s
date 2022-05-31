lbl_803A7064:
/* 803A7064  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A7068  7C 08 02 A6 */	mflr r0
/* 803A706C  3C 80 81 16 */	lis r4, l_mfi_player_bk_kind@ha /* 0x81167C20@ha */
/* 803A7070  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A7074  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A7078  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803A707C  3B E4 7C 20 */	addi r31, r4, l_mfi_player_bk_kind@l /* 0x81167C20@l */
/* 803A7080  38 81 00 08 */	addi r4, r1, 8
/* 803A7084  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A7088  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A708C  80 03 00 08 */	lwz r0, 8(r3)
/* 803A7090  38 60 00 00 */	li r3, 0
/* 803A7094  90 7F 00 00 */	stw r3, 0(r31)
/* 803A7098  38 61 00 0C */	addi r3, r1, 0xc
/* 803A709C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803A70A0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A70A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A70A8  4B FF E6 B9 */	bl mFI_Wpos2BlockNum
/* 803A70AC  2C 03 00 01 */	cmpwi r3, 1
/* 803A70B0  40 82 00 14 */	bne lbl_803A70C4
/* 803A70B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A70B8  80 81 00 08 */	lwz r4, 8(r1)
/* 803A70BC  4B FF F2 2D */	bl mFI_BkNum2BlockKind
/* 803A70C0  90 7F 00 00 */	stw r3, 0(r31)
lbl_803A70C4:
/* 803A70C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A70C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803A70CC  7C 08 03 A6 */	mtlr r0
/* 803A70D0  38 21 00 30 */	addi r1, r1, 0x30
/* 803A70D4  4E 80 00 20 */	blr 
