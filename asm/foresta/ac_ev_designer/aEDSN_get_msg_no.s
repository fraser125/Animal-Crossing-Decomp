lbl_8051D0DC:
/* 8051D0DC  88 A3 09 A2 */	lbz r5, 0x9a2(r3)
/* 8051D0E0  3C 60 80 6A */	lis r3, msg_no@ha /* 0x806A0410@ha */
/* 8051D0E4  38 63 04 10 */	addi r3, r3, msg_no@l /* 0x806A0410@l */
/* 8051D0E8  54 80 10 3A */	slwi r0, r4, 2
/* 8051D0EC  54 A4 10 3A */	slwi r4, r5, 2
/* 8051D0F0  7C 63 20 2E */	lwzx r3, r3, r4
/* 8051D0F4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8051D0F8  4E 80 00 20 */	blr 
