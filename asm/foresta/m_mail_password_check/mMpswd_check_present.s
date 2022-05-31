lbl_803BEA70:
/* 803BEA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEA74  7C 08 02 A6 */	mflr r0
/* 803BEA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEA7C  A0 83 00 00 */	lhz r4, 0(r3)
/* 803BEA80  28 04 FF FF */	cmplwi r4, 0xffff
/* 803BEA84  40 82 00 0C */	bne lbl_803BEA90
/* 803BEA88  38 60 00 01 */	li r3, 1
/* 803BEA8C  48 00 00 40 */	b lbl_803BEACC
lbl_803BEA90:
/* 803BEA90  88 03 00 04 */	lbz r0, 4(r3)
/* 803BEA94  2C 00 00 04 */	cmpwi r0, 4
/* 803BEA98  41 82 00 20 */	beq lbl_803BEAB8
/* 803BEA9C  40 80 00 28 */	bge lbl_803BEAC4
/* 803BEAA0  2C 00 00 00 */	cmpwi r0, 0
/* 803BEAA4  41 82 00 08 */	beq lbl_803BEAAC
/* 803BEAA8  48 00 00 1C */	b lbl_803BEAC4
lbl_803BEAAC:
/* 803BEAAC  7C 83 23 78 */	mr r3, r4
/* 803BEAB0  4B FF F8 71 */	bl mMpswd_check_present_famicom
/* 803BEAB4  48 00 00 18 */	b lbl_803BEACC
lbl_803BEAB8:
/* 803BEAB8  7C 83 23 78 */	mr r3, r4
/* 803BEABC  4B FF F8 ED */	bl mMpswd_check_present_user
/* 803BEAC0  48 00 00 0C */	b lbl_803BEACC
lbl_803BEAC4:
/* 803BEAC4  7C 83 23 78 */	mr r3, r4
/* 803BEAC8  4B FF FE 2D */	bl mMpswd_check_present_other
lbl_803BEACC:
/* 803BEACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BEAD0  7C 08 03 A6 */	mtlr r0
/* 803BEAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BEAD8  4E 80 00 20 */	blr 
