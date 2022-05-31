lbl_8047FB34:
/* 8047FB34  7C 60 07 34 */	extsh r0, r3
/* 8047FB38  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8047FB3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8047FB40  40 82 00 1C */	bne lbl_8047FB5C
/* 8047FB44  1C 83 00 18 */	mulli r4, r3, 0x18
/* 8047FB48  3C 60 80 69 */	lis r3, rotate_forbid_table@ha /* 0x806890C8@ha */
/* 8047FB4C  38 03 90 C8 */	addi r0, r3, rotate_forbid_table@l /* 0x806890C8@l */
/* 8047FB50  7C 60 22 14 */	add r3, r0, r4
/* 8047FB54  38 63 00 0C */	addi r3, r3, 0xc
/* 8047FB58  4E 80 00 20 */	blr 
lbl_8047FB5C:
/* 8047FB5C  1C 83 00 18 */	mulli r4, r3, 0x18
/* 8047FB60  3C 60 80 69 */	lis r3, rotate_forbid_table@ha /* 0x806890C8@ha */
/* 8047FB64  38 03 90 C8 */	addi r0, r3, rotate_forbid_table@l /* 0x806890C8@l */
/* 8047FB68  7C 60 22 14 */	add r3, r0, r4
/* 8047FB6C  4E 80 00 20 */	blr 
