lbl_8055A0F0:
/* 8055A0F0  88 03 09 A5 */	lbz r0, 0x9a5(r3)
/* 8055A0F4  3C 60 80 6B */	lis r3, zone_sum@ha /* 0x806A91D8@ha */
/* 8055A0F8  3C C0 80 6B */	lis r6, next_zone_table@ha /* 0x806A91C8@ha */
/* 8055A0FC  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8055A100  54 07 10 3A */	slwi r7, r0, 2
/* 8055A104  38 63 91 D8 */	addi r3, r3, zone_sum@l /* 0x806A91D8@l */
/* 8055A108  7C 03 38 2E */	lwzx r0, r3, r7
/* 8055A10C  38 C6 91 C8 */	addi r6, r6, next_zone_table@l /* 0x806A91C8@l */
/* 8055A110  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8055A114  7C 86 38 2E */	lwzx r4, r6, r7
/* 8055A118  7C 05 01 D6 */	mullw r0, r5, r0
/* 8055A11C  7C 03 02 14 */	add r0, r3, r0
/* 8055A120  7C 64 00 AE */	lbzx r3, r4, r0
/* 8055A124  4E 80 00 20 */	blr 
