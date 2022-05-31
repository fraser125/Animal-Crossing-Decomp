lbl_803CBC48:
/* 803CBC48  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CBC4C  38 00 00 0F */	li r0, 0xf
/* 803CBC50  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803CBC54  3C C5 00 01 */	addis r6, r5, 1
/* 803CBC58  1C 83 09 88 */	mulli r4, r3, 0x988
/* 803CBC5C  38 C6 74 38 */	addi r6, r6, 0x7438
/* 803CBC60  38 A4 08 F0 */	addi r5, r4, 0x8f0
/* 803CBC64  38 80 00 80 */	li r4, 0x80
/* 803CBC68  7C A6 2A 14 */	add r5, r6, r5
/* 803CBC6C  7C 09 03 A6 */	mtctr r0
lbl_803CBC70:
/* 803CBC70  98 85 00 00 */	stb r4, 0(r5)
/* 803CBC74  38 A5 00 01 */	addi r5, r5, 1
/* 803CBC78  42 00 FF F8 */	bdnz lbl_803CBC70
/* 803CBC7C  38 00 00 0F */	li r0, 0xf
/* 803CBC80  38 A0 00 00 */	li r5, 0
/* 803CBC84  38 80 00 80 */	li r4, 0x80
/* 803CBC88  7C 09 03 A6 */	mtctr r0
lbl_803CBC8C:
/* 803CBC8C  7C 05 18 00 */	cmpw r5, r3
/* 803CBC90  41 82 00 0C */	beq lbl_803CBC9C
/* 803CBC94  38 06 08 F0 */	addi r0, r6, 0x8f0
/* 803CBC98  7C 83 01 AE */	stbx r4, r3, r0
lbl_803CBC9C:
/* 803CBC9C  38 C6 09 88 */	addi r6, r6, 0x988
/* 803CBCA0  38 A5 00 01 */	addi r5, r5, 1
/* 803CBCA4  42 00 FF E8 */	bdnz lbl_803CBC8C
/* 803CBCA8  4E 80 00 20 */	blr 
