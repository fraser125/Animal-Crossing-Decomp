lbl_80599894:
/* 80599894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599898  7C 08 02 A6 */	mflr r0
/* 8059989C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805998A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805998A4  7C 7F 1B 78 */	mr r31, r3
/* 805998A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805998AC  7C 9E 23 78 */	mr r30, r4
/* 805998B0  4B E4 28 09 */	bl mPlib_Get_item_net_catch_label
/* 805998B4  7C 03 F8 40 */	cmplw r3, r31
/* 805998B8  40 82 00 28 */	bne lbl_805998E0
/* 805998BC  38 00 00 FF */	li r0, 0xff
/* 805998C0  7F E3 FB 78 */	mr r3, r31
/* 805998C4  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 805998C8  4B FF EC 59 */	bl aICH_anime_proc
/* 805998CC  7F E3 FB 78 */	mr r3, r31
/* 805998D0  7F C5 F3 78 */	mr r5, r30
/* 805998D4  38 80 00 01 */	li r4, 1
/* 805998D8  4B FF FF 71 */	bl aICH_setupAction
/* 805998DC  48 00 00 50 */	b lbl_8059992C
lbl_805998E0:
/* 805998E0  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 805998E4  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 805998E8  28 00 00 01 */	cmplwi r0, 1
/* 805998EC  40 82 00 20 */	bne lbl_8059990C
/* 805998F0  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 805998F4  40 82 00 18 */	bne lbl_8059990C
/* 805998F8  7F E3 FB 78 */	mr r3, r31
/* 805998FC  7F C5 F3 78 */	mr r5, r30
/* 80599900  38 80 00 01 */	li r4, 1
/* 80599904  4B FF FF 45 */	bl aICH_setupAction
/* 80599908  48 00 00 24 */	b lbl_8059992C
lbl_8059990C:
/* 8059990C  7F E3 FB 78 */	mr r3, r31
/* 80599910  7F C4 F3 78 */	mr r4, r30
/* 80599914  4B FF F7 75 */	bl aICH_check_block_edge
/* 80599918  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059991C  7F E3 FB 78 */	mr r3, r31
/* 80599920  7F C4 F3 78 */	mr r4, r30
/* 80599924  7D 89 03 A6 */	mtctr r12
/* 80599928  4E 80 04 21 */	bctrl 
lbl_8059992C:
/* 8059992C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599934  83 C1 00 08 */	lwz r30, 8(r1)
/* 80599938  7C 08 03 A6 */	mtlr r0
/* 8059993C  38 21 00 10 */	addi r1, r1, 0x10
/* 80599940  4E 80 00 20 */	blr 
