lbl_805C6690:
/* 805C6690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6694  7C 08 02 A6 */	mflr r0
/* 805C6698  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C669C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C66A0  7C 7F 1B 78 */	mr r31, r3
/* 805C66A4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C66A8  80 04 09 90 */	lwz r0, 0x990(r4)
/* 805C66AC  28 00 00 00 */	cmplwi r0, 0
/* 805C66B0  40 82 00 10 */	bne lbl_805C66C0
/* 805C66B4  3C 60 81 21 */	lis r3, board_ovl_data@ha /* 0x81210200@ha */
/* 805C66B8  38 03 02 00 */	addi r0, r3, board_ovl_data@l /* 0x81210200@l */
/* 805C66BC  90 04 09 90 */	stw r0, 0x990(r4)
lbl_805C66C0:
/* 805C66C0  7F E3 FB 78 */	mr r3, r31
/* 805C66C4  4B FF FC FD */	bl mBD_board_ovl_init
/* 805C66C8  7F E3 FB 78 */	mr r3, r31
/* 805C66CC  4B FF FC D5 */	bl mBD_board_ovl_set_proc
/* 805C66D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C66D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C66D8  7C 08 03 A6 */	mtlr r0
/* 805C66DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C66E0  4E 80 00 20 */	blr 
