lbl_805DA7D8:
/* 805DA7D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805DA7DC  2C 00 00 04 */	cmpwi r0, 4
/* 805DA7E0  41 82 00 14 */	beq lbl_805DA7F4
/* 805DA7E4  4C 80 00 20 */	bgelr 
/* 805DA7E8  2C 00 00 03 */	cmpwi r0, 3
/* 805DA7EC  40 80 00 14 */	bge lbl_805DA800
/* 805DA7F0  4E 80 00 20 */	blr 
lbl_805DA7F4:
/* 805DA7F4  80 A4 00 00 */	lwz r5, 0(r4)
/* 805DA7F8  38 A5 00 01 */	addi r5, r5, 1
/* 805DA7FC  48 00 00 14 */	b lbl_805DA810
lbl_805DA800:
/* 805DA800  80 A4 00 00 */	lwz r5, 0(r4)
/* 805DA804  38 A5 FF FF */	addi r5, r5, -1
/* 805DA808  48 00 00 08 */	b lbl_805DA810
/* 805DA80C  4E 80 00 20 */	blr 
lbl_805DA810:
/* 805DA810  2C 05 00 00 */	cmpwi r5, 0
/* 805DA814  4D 80 00 20 */	bltlr 
/* 805DA818  2C 05 00 02 */	cmpwi r5, 2
/* 805DA81C  41 80 00 08 */	blt lbl_805DA824
/* 805DA820  4E 80 00 20 */	blr 
lbl_805DA824:
/* 805DA824  38 00 00 01 */	li r0, 1
/* 805DA828  2C 05 00 01 */	cmpwi r5, 1
/* 805DA82C  98 03 00 15 */	stb r0, 0x15(r3)
/* 805DA830  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 805DA834  90 04 00 00 */	stw r0, 0(r4)
/* 805DA838  41 82 00 1C */	beq lbl_805DA854
/* 805DA83C  4C 80 00 20 */	bgelr 
/* 805DA840  2C 05 00 00 */	cmpwi r5, 0
/* 805DA844  4D 80 00 20 */	bltlr 
/* 805DA848  38 04 00 06 */	addi r0, r4, 6
/* 805DA84C  90 03 00 28 */	stw r0, 0x28(r3)
/* 805DA850  4E 80 00 20 */	blr 
lbl_805DA854:
/* 805DA854  38 04 00 14 */	addi r0, r4, 0x14
/* 805DA858  90 03 00 28 */	stw r0, 0x28(r3)
/* 805DA85C  4E 80 00 20 */	blr 
