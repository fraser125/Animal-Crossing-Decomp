lbl_805205E8:
/* 805205E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805205EC  7C 08 02 A6 */	mflr r0
/* 805205F0  3C A0 80 65 */	lis r5, lit_879@ha /* 0x80649124@ha */
/* 805205F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805205F8  C0 05 91 24 */	lfs f0, lit_879@l(r5)  /* 0x80649124@l */
/* 805205FC  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 80520600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80520604  40 81 00 0C */	ble lbl_80520610
/* 80520608  38 A0 00 03 */	li r5, 3
/* 8052060C  48 00 04 9D */	bl aEGH_setup_think_proc
lbl_80520610:
/* 80520610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520614  7C 08 03 A6 */	mtlr r0
/* 80520618  38 21 00 10 */	addi r1, r1, 0x10
/* 8052061C  4E 80 00 20 */	blr 