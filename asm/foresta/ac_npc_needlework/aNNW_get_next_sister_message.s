lbl_805618EC:
/* 805618EC  3C 60 81 1F */	lis r3, struct_811ED318+0x1@ha /* 0x811ED319@ha */
/* 805618F0  88 A3 D3 19 */	lbz r5, struct_811ED318+0x1@l(r3)  /* 0x811ED319@l */
/* 805618F4  28 05 00 02 */	cmplwi r5, 2
/* 805618F8  40 80 00 2C */	bge lbl_80561924
/* 805618FC  3C 60 81 1F */	lis r3, struct_811ED318+0x0@ha /* 0x811ED318@ha */
/* 80561900  3C 80 80 6C */	lis r4, aNNW_message_table@ha /* 0x806BDF30@ha */
/* 80561904  88 03 D3 18 */	lbz r0, struct_811ED318+0x0@l(r3)  /* 0x811ED318@l */
/* 80561908  38 64 DF 30 */	addi r3, r4, aNNW_message_table@l /* 0x806BDF30@l */
/* 8056190C  7C 63 2A 14 */	add r3, r3, r5
/* 80561910  1C 00 00 03 */	mulli r0, r0, 3
/* 80561914  7C 63 02 14 */	add r3, r3, r0
/* 80561918  88 03 00 01 */	lbz r0, 1(r3)
/* 8056191C  28 00 00 FF */	cmplwi r0, 0xff
/* 80561920  40 82 00 0C */	bne lbl_8056192C
lbl_80561924:
/* 80561924  38 60 00 00 */	li r3, 0
/* 80561928  4E 80 00 20 */	blr 
lbl_8056192C:
/* 8056192C  38 60 00 01 */	li r3, 1
/* 80561930  4E 80 00 20 */	blr 
