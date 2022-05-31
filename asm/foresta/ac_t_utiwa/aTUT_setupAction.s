lbl_804AA4D8:
/* 804AA4D8  3C C0 80 69 */	lis r6, process@ha /* 0x8068F23C@ha */
/* 804AA4DC  3C A0 80 69 */	lis r5, start_scale@ha /* 0x8068F254@ha */
/* 804AA4E0  54 87 10 3A */	slwi r7, r4, 2
/* 804AA4E4  38 C6 F2 3C */	addi r6, r6, process@l /* 0x8068F23C@l */
/* 804AA4E8  38 A5 F2 54 */	addi r5, r5, start_scale@l /* 0x8068F254@l */
/* 804AA4EC  7C 06 38 2E */	lwzx r0, r6, r7
/* 804AA4F0  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804AA4F4  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804AA4F8  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804AA4FC  7C 05 3C 2E */	lfsx f0, r5, r7
/* 804AA500  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804AA504  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804AA508  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804AA50C  4E 80 00 20 */	blr 
