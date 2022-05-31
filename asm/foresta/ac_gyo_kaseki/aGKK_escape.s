lbl_805A6768:
/* 805A6768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A676C  7C 08 02 A6 */	mflr r0
/* 805A6770  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A6778  7C 7F 1B 78 */	mr r31, r3
/* 805A677C  4B FF F4 D5 */	bl aGKK_check_uki
/* 805A6780  2C 03 00 00 */	cmpwi r3, 0
/* 805A6784  40 82 00 7C */	bne lbl_805A6800
/* 805A6788  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A678C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 805A6790  40 82 00 14 */	bne lbl_805A67A4
/* 805A6794  7F E3 FB 78 */	mr r3, r31
/* 805A6798  4B FF F2 C1 */	bl aGKK_check_wall
/* 805A679C  2C 03 00 00 */	cmpwi r3, 0
/* 805A67A0  40 82 00 60 */	bne lbl_805A6800
lbl_805A67A4:
/* 805A67A4  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 805A67A8  2C 03 00 00 */	cmpwi r3, 0
/* 805A67AC  40 82 00 0C */	bne lbl_805A67B8
/* 805A67B0  38 00 00 00 */	li r0, 0
/* 805A67B4  48 00 00 0C */	b lbl_805A67C0
lbl_805A67B8:
/* 805A67B8  38 03 FF FF */	addi r0, r3, -1
/* 805A67BC  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A67C0:
/* 805A67C0  2C 00 00 00 */	cmpwi r0, 0
/* 805A67C4  40 82 00 20 */	bne lbl_805A67E4
/* 805A67C8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A67CC  7F E3 FB 78 */	mr r3, r31
/* 805A67D0  38 80 00 04 */	li r4, 4
/* 805A67D4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 805A67D8  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A67DC  48 00 03 7D */	bl aGKK_setupAction
/* 805A67E0  48 00 00 20 */	b lbl_805A6800
lbl_805A67E4:
/* 805A67E4  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A44C@ha */
/* 805A67E8  3C 80 80 65 */	lis r4, lit_867@ha /* 0x8064A4A8@ha */
/* 805A67EC  38 A3 A4 4C */	addi r5, r3, lit_466@l /* 0x8064A44C@l */
/* 805A67F0  C0 44 A4 A8 */	lfs f2, lit_867@l(r4)  /* 0x8064A4A8@l */
/* 805A67F4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A67F8  38 7F 00 74 */	addi r3, r31, 0x74
/* 805A67FC  4B E1 44 6D */	bl chase_f
lbl_805A6800:
/* 805A6800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A6808  7C 08 03 A6 */	mtlr r0
/* 805A680C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6810  4E 80 00 20 */	blr 
