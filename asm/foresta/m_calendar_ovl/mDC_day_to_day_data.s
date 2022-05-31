lbl_805C6BEC:
/* 805C6BEC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 805C6BF0  38 A0 00 00 */	li r5, 0
/* 805C6BF4  48 00 00 0C */	b lbl_805C6C00
lbl_805C6BF8:
/* 805C6BF8  38 63 00 01 */	addi r3, r3, 1
/* 805C6BFC  38 A5 00 01 */	addi r5, r5, 1
lbl_805C6C00:
/* 805C6C00  88 03 00 00 */	lbz r0, 0(r3)
/* 805C6C04  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805C6C08  7C 00 20 00 */	cmpw r0, r4
/* 805C6C0C  41 82 00 10 */	beq lbl_805C6C1C
/* 805C6C10  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 805C6C14  28 00 00 25 */	cmplwi r0, 0x25
/* 805C6C18  41 80 FF E0 */	blt lbl_805C6BF8
lbl_805C6C1C:
/* 805C6C1C  7C A3 2B 78 */	mr r3, r5
/* 805C6C20  4E 80 00 20 */	blr 
