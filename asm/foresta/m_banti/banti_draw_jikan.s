lbl_80378124:
/* 80378124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378128  7C 08 02 A6 */	mflr r0
/* 8037812C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80378130  39 61 00 20 */	addi r11, r1, 0x20
/* 80378134  4B D2 2D 9D */	bl func_8009AED0
/* 80378138  7C 7E 1B 78 */	mr r30, r3
/* 8037813C  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 80378140  81 23 00 00 */	lwz r9, 0(r3)
/* 80378144  64 A6 FF FF */	oris r6, r5, 0xffff
/* 80378148  64 A0 3C 19 */	oris r0, r5, 0x3c19
/* 8037814C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80378150  39 09 00 08 */	addi r8, r9, 8
/* 80378154  64 A7 FA 00 */	oris r7, r5, 0xfa00
/* 80378158  91 1E 00 00 */	stw r8, 0(r30)
/* 8037815C  60 C6 FF 00 */	ori r6, r6, 0xff00
/* 80378160  3C A0 FB 00 */	lis r5, 0xfb00
/* 80378164  60 00 0A 00 */	ori r0, r0, 0xa00
/* 80378168  90 E9 00 00 */	stw r7, 0(r9)
/* 8037816C  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80378170  7C 9F 23 78 */	mr r31, r4
/* 80378174  90 C9 00 04 */	stw r6, 4(r9)
/* 80378178  80 DE 00 00 */	lwz r6, 0(r30)
/* 8037817C  38 86 00 08 */	addi r4, r6, 8
/* 80378180  90 9E 00 00 */	stw r4, 0(r30)
/* 80378184  90 A6 00 00 */	stw r5, 0(r6)
/* 80378188  90 06 00 04 */	stw r0, 4(r6)
/* 8037818C  8B A3 04 3E */	lbz r29, 0x43e(r3)
/* 80378190  2C 1D 00 00 */	cmpwi r29, 0
/* 80378194  41 82 00 0C */	beq lbl_803781A0
/* 80378198  2C 1D 00 0C */	cmpwi r29, 0xc
/* 8037819C  40 82 00 0C */	bne lbl_803781A8
lbl_803781A0:
/* 803781A0  3B A0 00 0C */	li r29, 0xc
/* 803781A4  48 00 00 10 */	b lbl_803781B4
lbl_803781A8:
/* 803781A8  2C 1D 00 0B */	cmpwi r29, 0xb
/* 803781AC  40 81 00 08 */	ble lbl_803781B4
/* 803781B0  3B BD FF F4 */	addi r29, r29, -12
lbl_803781B4:
/* 803781B4  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 803781B8  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 803781BC  8B 83 04 46 */	lbz r28, 0x446(r3)
/* 803781C0  2C 1C 00 00 */	cmpwi r28, 0
/* 803781C4  41 82 00 0C */	beq lbl_803781D0
/* 803781C8  2C 1C 00 0C */	cmpwi r28, 0xc
/* 803781CC  40 82 00 0C */	bne lbl_803781D8
lbl_803781D0:
/* 803781D0  3B 80 00 0C */	li r28, 0xc
/* 803781D4  48 00 00 10 */	b lbl_803781E4
lbl_803781D8:
/* 803781D8  2C 1C 00 0B */	cmpwi r28, 0xb
/* 803781DC  40 81 00 08 */	ble lbl_803781E4
/* 803781E0  3B 9C FF F4 */	addi r28, r28, -12
lbl_803781E4:
/* 803781E4  38 00 00 0A */	li r0, 0xa
/* 803781E8  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 803781EC  7C DD 03 D6 */	divw r6, r29, r0
/* 803781F0  7F C3 F3 78 */	mr r3, r30
/* 803781F4  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 803781F8  7F E4 FB 78 */	mr r4, r31
/* 803781FC  38 A5 01 7C */	addi r5, r5, 0x17c
/* 80378200  39 00 00 01 */	li r8, 1
/* 80378204  7C FC 03 D6 */	divw r7, r28, r0
/* 80378208  39 20 00 00 */	li r9, 0
/* 8037820C  4B FF FD E1 */	bl banti_draw_jikan_sub
/* 80378210  38 E0 00 0A */	li r7, 0xa
/* 80378214  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80378218  7C DD 3B D6 */	divw r6, r29, r7
/* 8037821C  7F C3 F3 78 */	mr r3, r30
/* 80378220  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 80378224  7F E4 FB 78 */	mr r4, r31
/* 80378228  38 A5 02 2C */	addi r5, r5, 0x22c
/* 8037822C  39 00 00 00 */	li r8, 0
/* 80378230  7C 1C 3B D6 */	divw r0, r28, r7
/* 80378234  39 20 00 01 */	li r9, 1
/* 80378238  7C C6 39 D6 */	mullw r6, r6, r7
/* 8037823C  7C 00 39 D6 */	mullw r0, r0, r7
/* 80378240  7C C6 E8 50 */	subf r6, r6, r29
/* 80378244  7C E0 E0 50 */	subf r7, r0, r28
/* 80378248  4B FF FD A5 */	bl banti_draw_jikan_sub
/* 8037824C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80378250  38 E0 00 0A */	li r7, 0xa
/* 80378254  3B A3 C9 68 */	addi r29, r3, banti@l /* 0x8112C968@l */
/* 80378258  7F C3 F3 78 */	mr r3, r30
/* 8037825C  88 DD 04 3D */	lbz r6, 0x43d(r29)
/* 80378260  7F E4 FB 78 */	mr r4, r31
/* 80378264  88 1D 04 45 */	lbz r0, 0x445(r29)
/* 80378268  38 BD 02 DC */	addi r5, r29, 0x2dc
/* 8037826C  7C C6 3B D6 */	divw r6, r6, r7
/* 80378270  39 00 00 00 */	li r8, 0
/* 80378274  39 20 00 02 */	li r9, 2
/* 80378278  7C E0 3B D6 */	divw r7, r0, r7
/* 8037827C  4B FF FD 71 */	bl banti_draw_jikan_sub
/* 80378280  89 7D 04 3D */	lbz r11, 0x43d(r29)
/* 80378284  39 40 00 0A */	li r10, 0xa
/* 80378288  88 FD 04 45 */	lbz r7, 0x445(r29)
/* 8037828C  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80378290  7C CB 53 D6 */	divw r6, r11, r10
/* 80378294  7F C3 F3 78 */	mr r3, r30
/* 80378298  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 8037829C  7F E4 FB 78 */	mr r4, r31
/* 803782A0  38 A5 03 8C */	addi r5, r5, 0x38c
/* 803782A4  39 00 00 00 */	li r8, 0
/* 803782A8  7C 07 53 D6 */	divw r0, r7, r10
/* 803782AC  39 20 00 03 */	li r9, 3
/* 803782B0  7C C6 51 D6 */	mullw r6, r6, r10
/* 803782B4  7C 00 51 D6 */	mullw r0, r0, r10
/* 803782B8  7C C6 58 50 */	subf r6, r6, r11
/* 803782BC  7C E0 38 50 */	subf r7, r0, r7
/* 803782C0  4B FF FD 2D */	bl banti_draw_jikan_sub
/* 803782C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803782C8  4B D2 2C 55 */	bl func_8009AF1C
/* 803782CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803782D0  7C 08 03 A6 */	mtlr r0
/* 803782D4  38 21 00 20 */	addi r1, r1, 0x20
/* 803782D8  4E 80 00 20 */	blr 
