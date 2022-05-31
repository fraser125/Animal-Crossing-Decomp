lbl_8053BD4C:
/* 8053BD4C  3C E0 80 6A */	lis r7, anm_table@ha /* 0x806A35A4@ha */
/* 8053BD50  54 C0 10 3A */	slwi r0, r6, 2
/* 8053BD54  38 C7 35 A4 */	addi r6, r7, anm_table@l /* 0x806A35A4@l */
/* 8053BD58  54 84 10 3A */	slwi r4, r4, 2
/* 8053BD5C  7C C6 00 2E */	lwzx r6, r6, r0
/* 8053BD60  54 63 10 3A */	slwi r3, r3, 2
/* 8053BD64  54 A0 08 3C */	slwi r0, r5, 1
/* 8053BD68  7C 86 20 2E */	lwzx r4, r6, r4
/* 8053BD6C  7C 64 18 2E */	lwzx r3, r4, r3
/* 8053BD70  7C 63 02 14 */	add r3, r3, r0
/* 8053BD74  4E 80 00 20 */	blr 
