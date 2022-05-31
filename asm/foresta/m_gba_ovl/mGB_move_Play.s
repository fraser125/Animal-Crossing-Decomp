lbl_805DC6C8:
/* 805DC6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC6CC  7C 08 02 A6 */	mflr r0
/* 805DC6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC6D4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805DC6D8  2C 00 00 00 */	cmpwi r0, 0
/* 805DC6DC  40 82 00 90 */	bne lbl_805DC76C
/* 805DC6E0  38 00 00 01 */	li r0, 1
/* 805DC6E4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 805DC6E8  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805DC6EC  2C 00 00 04 */	cmpwi r0, 4
/* 805DC6F0  41 82 00 48 */	beq lbl_805DC738
/* 805DC6F4  40 80 00 88 */	bge lbl_805DC77C
/* 805DC6F8  2C 00 00 03 */	cmpwi r0, 3
/* 805DC6FC  40 80 00 08 */	bge lbl_805DC704
/* 805DC700  48 00 00 7C */	b lbl_805DC77C
lbl_805DC704:
/* 805DC704  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC708  3C 80 80 65 */	lis r4, lit_536@ha /* 0x8064B28C@ha */
/* 805DC70C  38 C4 B2 8C */	addi r6, r4, lit_536@l /* 0x8064B28C@l */
/* 805DC710  38 80 00 17 */	li r4, 0x17
/* 805DC714  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805DC718  38 A0 00 00 */	li r5, 0
/* 805DC71C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805DC720  38 C0 00 00 */	li r6, 0
/* 805DC724  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805DC728  FC 40 08 90 */	fmr f2, f1
/* 805DC72C  7D 89 03 A6 */	mtctr r12
/* 805DC730  4E 80 04 21 */	bctrl 
/* 805DC734  48 00 00 48 */	b lbl_805DC77C
lbl_805DC738:
/* 805DC738  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC73C  3C 80 80 65 */	lis r4, lit_536@ha /* 0x8064B28C@ha */
/* 805DC740  38 C4 B2 8C */	addi r6, r4, lit_536@l /* 0x8064B28C@l */
/* 805DC744  38 80 00 19 */	li r4, 0x19
/* 805DC748  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805DC74C  38 A0 00 00 */	li r5, 0
/* 805DC750  C0 26 00 00 */	lfs f1, 0(r6)
/* 805DC754  38 C0 00 00 */	li r6, 0
/* 805DC758  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805DC75C  FC 40 08 90 */	fmr f2, f1
/* 805DC760  7D 89 03 A6 */	mtctr r12
/* 805DC764  4E 80 04 21 */	bctrl 
/* 805DC768  48 00 00 14 */	b lbl_805DC77C
lbl_805DC76C:
/* 805DC76C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC770  81 85 09 1C */	lwz r12, 0x91c(r5)
/* 805DC774  7D 89 03 A6 */	mtctr r12
/* 805DC778  4E 80 04 21 */	bctrl 
lbl_805DC77C:
/* 805DC77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC780  7C 08 03 A6 */	mtlr r0
/* 805DC784  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC788  4E 80 00 20 */	blr 
