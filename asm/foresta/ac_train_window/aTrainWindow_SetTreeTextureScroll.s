lbl_804ACFDC:
/* 804ACFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ACFE0  7C 08 02 A6 */	mflr r0
/* 804ACFE4  7C 65 1B 78 */	mr r5, r3
/* 804ACFE8  38 C0 00 80 */	li r6, 0x80
/* 804ACFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ACFF0  38 E0 00 20 */	li r7, 0x20
/* 804ACFF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ACFF8  7C 9F 23 78 */	mr r31, r4
/* 804ACFFC  80 64 00 00 */	lwz r3, 0(r4)
/* 804AD000  80 85 01 9C */	lwz r4, 0x19c(r5)
/* 804AD004  80 A5 01 A0 */	lwz r5, 0x1a0(r5)
/* 804AD008  4B F3 84 01 */	bl tex_scroll2
/* 804AD00C  80 DF 00 00 */	lwz r6, 0(r31)
/* 804AD010  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 804AD014  38 A4 00 20 */	addi r5, r4, 0x0020 /* 0xDB060020@l */
/* 804AD018  80 86 02 D0 */	lwz r4, 0x2d0(r6)
/* 804AD01C  38 04 00 08 */	addi r0, r4, 8
/* 804AD020  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 804AD024  90 A4 00 00 */	stw r5, 0(r4)
/* 804AD028  90 64 00 04 */	stw r3, 4(r4)
/* 804AD02C  80 86 02 E0 */	lwz r4, 0x2e0(r6)
/* 804AD030  38 04 00 08 */	addi r0, r4, 8
/* 804AD034  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 804AD038  90 A4 00 00 */	stw r5, 0(r4)
/* 804AD03C  90 64 00 04 */	stw r3, 4(r4)
/* 804AD040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AD044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD048  7C 08 03 A6 */	mtlr r0
/* 804AD04C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD050  4E 80 00 20 */	blr 
