lbl_8052444C:
/* 8052444C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80524450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80524454  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80524458  3C 83 00 02 */	addis r4, r3, 2
/* 8052445C  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 80524460  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 80524464  90 61 00 08 */	stw r3, 8(r1)
/* 80524468  88 61 00 0A */	lbz r3, 0xa(r1)
/* 8052446C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80524470  28 03 00 06 */	cmplwi r3, 6
/* 80524474  41 80 00 0C */	blt lbl_80524480
/* 80524478  28 03 00 17 */	cmplwi r3, 0x17
/* 8052447C  41 80 00 0C */	blt lbl_80524488
lbl_80524480:
/* 80524480  38 60 2F 36 */	li r3, 0x2f36
/* 80524484  48 00 00 24 */	b lbl_805244A8
lbl_80524488:
/* 80524488  28 03 00 0A */	cmplwi r3, 0xa
/* 8052448C  40 80 00 0C */	bge lbl_80524498
/* 80524490  38 60 2F 33 */	li r3, 0x2f33
/* 80524494  48 00 00 14 */	b lbl_805244A8
lbl_80524498:
/* 80524498  38 00 00 11 */	li r0, 0x11
/* 8052449C  7C 00 18 10 */	subfc r0, r0, r3
/* 805244A0  7C 60 01 10 */	subfe r3, r0, r0
/* 805244A4  38 63 2F 35 */	addi r3, r3, 0x2f35
lbl_805244A8:
/* 805244A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805244AC  4E 80 00 20 */	blr 
