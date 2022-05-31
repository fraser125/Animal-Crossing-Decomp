lbl_804AA7DC:
/* 804AA7DC  3C A0 80 69 */	lis r5, process@ha /* 0x8068F2D4@ha */
/* 804AA7E0  54 80 10 3A */	slwi r0, r4, 2
/* 804AA7E4  38 A5 F2 D4 */	addi r5, r5, process@l /* 0x8068F2D4@l */
/* 804AA7E8  7C 05 00 2E */	lwzx r0, r5, r0
/* 804AA7EC  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804AA7F0  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804AA7F4  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804AA7F8  4E 80 00 20 */	blr 
