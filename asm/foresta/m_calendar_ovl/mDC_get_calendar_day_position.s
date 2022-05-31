lbl_805C6C54:
/* 805C6C54  88 03 10 56 */	lbz r0, 0x1056(r3)
/* 805C6C58  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 805C6C5C  38 A0 00 00 */	li r5, 0
/* 805C6C60  1C 00 00 73 */	mulli r0, r0, 0x73
/* 805C6C64  7C 63 02 14 */	add r3, r3, r0
lbl_805C6C68:
/* 805C6C68  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 805C6C6C  28 00 00 25 */	cmplwi r0, 0x25
/* 805C6C70  41 81 00 1C */	bgt lbl_805C6C8C
/* 805C6C74  7C 03 00 AE */	lbzx r0, r3, r0
/* 805C6C78  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805C6C7C  7C 04 00 00 */	cmpw r4, r0
/* 805C6C80  41 82 00 0C */	beq lbl_805C6C8C
/* 805C6C84  38 A5 00 01 */	addi r5, r5, 1
/* 805C6C88  4B FF FF E0 */	b lbl_805C6C68
lbl_805C6C8C:
/* 805C6C8C  7C A3 2B 78 */	mr r3, r5
/* 805C6C90  4E 80 00 20 */	blr 
