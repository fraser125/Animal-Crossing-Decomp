lbl_805D3B64:
/* 805D3B64  2C 04 00 02 */	cmpwi r4, 2
/* 805D3B68  41 82 00 20 */	beq lbl_805D3B88
/* 805D3B6C  38 00 00 00 */	li r0, 0
/* 805D3B70  98 03 06 9A */	stb r0, 0x69a(r3)
/* 805D3B74  98 03 06 98 */	stb r0, 0x698(r3)
/* 805D3B78  90 03 06 80 */	stw r0, 0x680(r3)
/* 805D3B7C  90 03 06 84 */	stw r0, 0x684(r3)
/* 805D3B80  90 03 06 88 */	stw r0, 0x688(r3)
/* 805D3B84  90 03 06 8C */	stw r0, 0x68c(r3)
lbl_805D3B88:
/* 805D3B88  38 00 00 00 */	li r0, 0
/* 805D3B8C  3C A0 80 6D */	lis r5, process_1401@ha /* 0x806CC6B0@ha */
/* 805D3B90  98 03 06 DA */	stb r0, 0x6da(r3)
/* 805D3B94  54 80 10 3A */	slwi r0, r4, 2
/* 805D3B98  38 A5 C6 B0 */	addi r5, r5, process_1401@l /* 0x806CC6B0@l */
/* 805D3B9C  98 83 06 A8 */	stb r4, 0x6a8(r3)
/* 805D3BA0  7C 05 00 2E */	lwzx r0, r5, r0
/* 805D3BA4  90 03 06 B0 */	stw r0, 0x6b0(r3)
/* 805D3BA8  4E 80 00 20 */	blr 
