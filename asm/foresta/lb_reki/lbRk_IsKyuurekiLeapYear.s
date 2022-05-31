lbl_804074B8:
/* 804074B8  3C 80 80 66 */	lis r4, l_lbRk_leapdays@ha /* 0x8065EF50@ha */
/* 804074BC  54 60 10 3A */	slwi r0, r3, 2
/* 804074C0  38 64 EF 50 */	addi r3, r4, l_lbRk_leapdays@l /* 0x8065EF50@l */
/* 804074C4  7C 63 02 14 */	add r3, r3, r0
/* 804074C8  80 63 E0 C0 */	lwz r3, -0x1f40(r3)
/* 804074CC  30 03 FF FF */	addic r0, r3, -1
/* 804074D0  7C 60 19 10 */	subfe r3, r0, r3
/* 804074D4  4E 80 00 20 */	blr 
