lbl_805D11DC:
/* 805D11DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D11E0  7C 08 02 A6 */	mflr r0
/* 805D11E4  3C 80 81 21 */	lis r4, diary_ovl_data@ha /* 0x81210FC0@ha */
/* 805D11E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D11EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D11F0  7C 7F 1B 78 */	mr r31, r3
/* 805D11F4  38 64 0F C0 */	addi r3, r4, diary_ovl_data@l /* 0x81210FC0@l */
/* 805D11F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D11FC  28 03 00 00 */	cmplwi r3, 0
/* 805D1200  41 82 00 14 */	beq lbl_805D1214
/* 805D1204  4B DE B2 B1 */	bl zelda_free
/* 805D1208  3C 60 81 21 */	lis r3, diary_ovl_data@ha /* 0x81210FC0@ha */
/* 805D120C  38 00 00 00 */	li r0, 0
/* 805D1210  90 03 0F C0 */	stw r0, diary_ovl_data@l(r3)  /* 0x81210FC0@l */
lbl_805D1214:
/* 805D1214  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805D1218  38 00 00 00 */	li r0, 0
/* 805D121C  90 03 09 E8 */	stw r0, 0x9e8(r3)
/* 805D1220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D1224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D1228  7C 08 03 A6 */	mtlr r0
/* 805D122C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D1230  4E 80 00 20 */	blr 
