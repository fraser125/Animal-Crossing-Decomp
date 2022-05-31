lbl_804D65EC:
/* 804D65EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D65F0  7C 08 02 A6 */	mflr r0
/* 804D65F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D65F8  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 804D65FC  D0 04 00 00 */	stfs f0, 0(r4)
/* 804D6600  4B FF FF 4D */	bl Player_actor_CulcAnimation_Base
/* 804D6604  20 03 00 01 */	subfic r0, r3, 1
/* 804D6608  7C 00 00 34 */	cntlzw r0, r0
/* 804D660C  54 03 D9 7E */	srwi r3, r0, 5
/* 804D6610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6614  7C 08 03 A6 */	mtlr r0
/* 804D6618  38 21 00 10 */	addi r1, r1, 0x10
/* 804D661C  4E 80 00 20 */	blr 
