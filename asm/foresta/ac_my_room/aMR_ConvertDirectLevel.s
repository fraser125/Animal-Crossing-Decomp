lbl_8047ED40:
/* 8047ED40  2C 03 00 00 */	cmpwi r3, 0
/* 8047ED44  41 80 00 20 */	blt lbl_8047ED64
/* 8047ED48  2C 03 00 03 */	cmpwi r3, 3
/* 8047ED4C  41 81 00 18 */	bgt lbl_8047ED64
/* 8047ED50  3C 80 80 69 */	lis r4, direct_conv_data@ha /* 0x8068A084@ha */
/* 8047ED54  54 60 08 3C */	slwi r0, r3, 1
/* 8047ED58  38 64 A0 84 */	addi r3, r4, direct_conv_data@l /* 0x8068A084@l */
/* 8047ED5C  7C 63 02 AE */	lhax r3, r3, r0
/* 8047ED60  4E 80 00 20 */	blr 
lbl_8047ED64:
/* 8047ED64  38 60 FF FF */	li r3, -1
/* 8047ED68  4E 80 00 20 */	blr 
