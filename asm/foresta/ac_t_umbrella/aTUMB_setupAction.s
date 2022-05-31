lbl_804AA0E0:
/* 804AA0E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA0E4  7C 08 02 A6 */	mflr r0
/* 804AA0E8  3C A0 80 69 */	lis r5, process@ha /* 0x8068F0B4@ha */
/* 804AA0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA0F0  54 80 10 3A */	slwi r0, r4, 2
/* 804AA0F4  38 A5 F0 B4 */	addi r5, r5, process@l /* 0x8068F0B4@l */
/* 804AA0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AA0FC  7C 9F 23 78 */	mr r31, r4
/* 804AA100  93 C1 00 08 */	stw r30, 8(r1)
/* 804AA104  7C 7E 1B 78 */	mr r30, r3
/* 804AA108  7C 05 00 2E */	lwzx r0, r5, r0
/* 804AA10C  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804AA110  93 E3 01 D0 */	stw r31, 0x1d0(r3)
/* 804AA114  93 E3 01 C0 */	stw r31, 0x1c0(r3)
/* 804AA118  4B FF FD 75 */	bl aTUMB_OngenTrgStart
/* 804AA11C  2C 1F 00 04 */	cmpwi r31, 4
/* 804AA120  40 82 00 18 */	bne lbl_804AA138
/* 804AA124  3C 60 80 64 */	lis r3, lit_501@ha /* 0x80645E38@ha */
/* 804AA128  38 00 00 01 */	li r0, 1
/* 804AA12C  90 1E 01 F0 */	stw r0, 0x1f0(r30)
/* 804AA130  C0 03 5E 38 */	lfs f0, lit_501@l(r3)  /* 0x80645E38@l */
/* 804AA134  48 00 00 0C */	b lbl_804AA140
lbl_804AA138:
/* 804AA138  3C 60 80 64 */	lis r3, lit_502@ha /* 0x80645E3C@ha */
/* 804AA13C  C0 03 5E 3C */	lfs f0, lit_502@l(r3)  /* 0x80645E3C@l */
lbl_804AA140:
/* 804AA140  D0 1E 01 D4 */	stfs f0, 0x1d4(r30)
/* 804AA144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA14C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AA150  7C 08 03 A6 */	mtlr r0
/* 804AA154  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA158  4E 80 00 20 */	blr 
