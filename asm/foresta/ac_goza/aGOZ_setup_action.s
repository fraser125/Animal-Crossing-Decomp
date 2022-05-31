lbl_805AF57C:
/* 805AF57C  3C A0 80 6C */	lis r5, process@ha /* 0x806C5228@ha */
/* 805AF580  54 80 10 3A */	slwi r0, r4, 2
/* 805AF584  38 85 52 28 */	addi r4, r5, process@l /* 0x806C5228@l */
/* 805AF588  7C 04 00 2E */	lwzx r0, r4, r0
/* 805AF58C  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805AF590  4E 80 00 20 */	blr 
