lbl_80518264:
/* 80518264  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80518268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051826C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80518270  3C 83 00 02 */	addis r4, r3, 2
/* 80518274  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 80518278  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 8051827C  90 61 00 08 */	stw r3, 8(r1)
/* 80518280  88 61 00 0A */	lbz r3, 0xa(r1)
/* 80518284  90 01 00 0C */	stw r0, 0xc(r1)
/* 80518288  28 03 00 06 */	cmplwi r3, 6
/* 8051828C  41 80 00 0C */	blt lbl_80518298
/* 80518290  28 03 00 12 */	cmplwi r3, 0x12
/* 80518294  41 80 00 0C */	blt lbl_805182A0
lbl_80518298:
/* 80518298  38 60 00 01 */	li r3, 1
/* 8051829C  48 00 00 08 */	b lbl_805182A4
lbl_805182A0:
/* 805182A0  38 60 00 00 */	li r3, 0
lbl_805182A4:
/* 805182A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805182A8  4E 80 00 20 */	blr 
