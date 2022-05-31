lbl_8052D154:
/* 8052D154  3C E0 80 6A */	lis r7, anm_table@ha /* 0x806A1E48@ha */
/* 8052D158  54 C0 10 3A */	slwi r0, r6, 2
/* 8052D15C  38 C7 1E 48 */	addi r6, r7, anm_table@l /* 0x806A1E48@l */
/* 8052D160  54 84 10 3A */	slwi r4, r4, 2
/* 8052D164  7C C6 00 2E */	lwzx r6, r6, r0
/* 8052D168  54 63 10 3A */	slwi r3, r3, 2
/* 8052D16C  54 A0 08 3C */	slwi r0, r5, 1
/* 8052D170  7C 86 20 2E */	lwzx r4, r6, r4
/* 8052D174  7C 64 18 2E */	lwzx r3, r4, r3
/* 8052D178  7C 63 02 14 */	add r3, r3, r0
/* 8052D17C  4E 80 00 20 */	blr 
