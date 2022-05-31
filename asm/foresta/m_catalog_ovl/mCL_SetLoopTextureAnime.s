lbl_805CA5B8:
/* 805CA5B8  80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 805CA5BC  28 06 00 00 */	cmplwi r6, 0
/* 805CA5C0  4D 82 00 20 */	beqlr 
/* 805CA5C4  A8 03 08 10 */	lha r0, 0x810(r3)
/* 805CA5C8  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805CA5CC  80 E5 00 00 */	lwz r7, 0(r5)
/* 805CA5D0  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 805CA5D4  80 A6 00 00 */	lwz r5, 0(r6)
/* 805CA5D8  54 00 10 3A */	slwi r0, r0, 2
/* 805CA5DC  80 67 02 D0 */	lwz r3, 0x2d0(r7)
/* 805CA5E0  7C A5 00 2E */	lwzx r5, r5, r0
/* 805CA5E4  38 03 00 08 */	addi r0, r3, 8
/* 805CA5E8  90 07 02 D0 */	stw r0, 0x2d0(r7)
/* 805CA5EC  90 83 00 00 */	stw r4, 0(r3)
/* 805CA5F0  90 A3 00 04 */	stw r5, 4(r3)
/* 805CA5F4  80 67 02 E0 */	lwz r3, 0x2e0(r7)
/* 805CA5F8  38 03 00 08 */	addi r0, r3, 8
/* 805CA5FC  90 07 02 E0 */	stw r0, 0x2e0(r7)
/* 805CA600  90 83 00 00 */	stw r4, 0(r3)
/* 805CA604  90 A3 00 04 */	stw r5, 4(r3)
/* 805CA608  4E 80 00 20 */	blr 
