lbl_805616D8:
/* 805616D8  3C 60 81 1F */	lis r3, struct_811ED318+0x1@ha /* 0x811ED319@ha */
/* 805616DC  88 A3 D3 19 */	lbz r5, struct_811ED318+0x1@l(r3)  /* 0x811ED319@l */
/* 805616E0  28 05 00 03 */	cmplwi r5, 3
/* 805616E4  41 80 00 0C */	blt lbl_805616F0
/* 805616E8  38 60 FF FF */	li r3, -1
/* 805616EC  4E 80 00 20 */	blr 
lbl_805616F0:
/* 805616F0  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 805616F4  3C 80 80 6C */	lis r4, aNNW_message_table@ha /* 0x806BDF30@ha */
/* 805616F8  88 03 D3 18 */	lbz r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
/* 805616FC  38 64 DF 30 */	addi r3, r4, aNNW_message_table@l /* 0x806BDF30@l */
/* 80561700  7C 63 2A 14 */	add r3, r3, r5
/* 80561704  1C 00 00 03 */	mulli r0, r0, 3
/* 80561708  7C 63 00 AE */	lbzx r3, r3, r0
/* 8056170C  38 63 30 12 */	addi r3, r3, 0x3012
/* 80561710  4E 80 00 20 */	blr 
