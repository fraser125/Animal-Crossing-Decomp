lbl_8045C094:
/* 8045C094  3C 80 80 68 */	lis r4, KANBAN_XL_TBL@ha /* 0x80686E0C@ha */
/* 8045C098  38 00 00 02 */	li r0, 2
/* 8045C09C  38 E4 6E 0C */	addi r7, r4, KANBAN_XL_TBL@l /* 0x80686E0C@l */
/* 8045C0A0  38 80 00 00 */	li r4, 0
/* 8045C0A4  7C 09 03 A6 */	mtctr r0
lbl_8045C0A8:
/* 8045C0A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8045C0AC  7C 07 24 2E */	lfsx f0, r7, r4
/* 8045C0B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045C0B4  40 81 00 94 */	ble lbl_8045C148
/* 8045C0B8  3C A0 80 68 */	lis r5, KANBAN_XR_TBL@ha /* 0x80686E14@ha */
/* 8045C0BC  38 A5 6E 14 */	addi r5, r5, KANBAN_XR_TBL@l /* 0x80686E14@l */
/* 8045C0C0  7C 05 24 2E */	lfsx f0, r5, r4
/* 8045C0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045C0C8  40 80 00 80 */	bge lbl_8045C148
/* 8045C0CC  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 8045C0D0  3C A0 80 64 */	lis r5, lit_5270@ha /* 0x80644980@ha */
/* 8045C0D4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8045C0D8  38 C5 49 80 */	addi r6, r5, lit_5270@l /* 0x80644980@l */
/* 8045C0DC  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045C0E0  C0 46 00 00 */	lfs f2, 0(r6)
/* 8045C0E4  EC 83 00 28 */	fsubs f4, f3, f0
/* 8045C0E8  C0 25 45 BC */	lfs f1, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045C0EC  EC 04 10 28 */	fsubs f0, f4, f2
/* 8045C0F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045C0F4  4C 41 13 82 */	cror 2, 1, 2
/* 8045C0F8  40 82 00 1C */	bne lbl_8045C114
/* 8045C0FC  EC 03 10 28 */	fsubs f0, f3, f2
/* 8045C100  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045C104  40 80 00 10 */	bge lbl_8045C114
/* 8045C108  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045C10C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8045C110  48 00 00 38 */	b lbl_8045C148
lbl_8045C114:
/* 8045C114  3C C0 80 64 */	lis r6, lit_1460@ha /* 0x80644740@ha */
/* 8045C118  C4 46 47 40 */	lfsu f2, lit_1460@l(r6)  /* 0x80644740@l */
/* 8045C11C  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045C120  EC 04 10 28 */	fsubs f0, f4, f2
/* 8045C124  C0 25 45 BC */	lfs f1, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045C128  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045C12C  4C 40 13 82 */	cror 2, 0, 2
/* 8045C130  40 82 00 18 */	bne lbl_8045C148
/* 8045C134  EC 03 10 28 */	fsubs f0, f3, f2
/* 8045C138  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045C13C  40 81 00 0C */	ble lbl_8045C148
/* 8045C140  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045C144  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_8045C148:
/* 8045C148  38 84 00 04 */	addi r4, r4, 4
/* 8045C14C  42 00 FF 5C */	bdnz lbl_8045C0A8
/* 8045C150  4E 80 00 20 */	blr 
