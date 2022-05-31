lbl_803A0694:
/* 803A0694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A0698  7C 08 02 A6 */	mflr r0
/* 803A069C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A06A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A06A4  4B CF A8 2D */	bl func_8009AED0
/* 803A06A8  7C 9D 23 78 */	mr r29, r4
/* 803A06AC  7C 7F 1B 78 */	mr r31, r3
/* 803A06B0  7C BC 2B 78 */	mr r28, r5
/* 803A06B4  38 80 00 E0 */	li r4, 0xe0
/* 803A06B8  4B CB C9 B1 */	bl bzero
/* 803A06BC  3B DD 00 01 */	addi r30, r29, 1
/* 803A06C0  93 BF 00 00 */	stw r29, 0(r31)
/* 803A06C4  3B BC 00 01 */	addi r29, r28, 1
/* 803A06C8  38 80 00 00 */	li r4, 0
/* 803A06CC  57 C0 18 38 */	slwi r0, r30, 3
/* 803A06D0  93 9F 00 04 */	stw r28, 4(r31)
/* 803A06D4  7C 7D 01 D6 */	mullw r3, r29, r0
/* 803A06D8  90 9F 00 08 */	stw r4, 8(r31)
/* 803A06DC  4B CB C8 2D */	bl func_8005CF08
/* 803A06E0  57 C0 20 36 */	slwi r0, r30, 4
/* 803A06E4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 803A06E8  7F BD 01 D6 */	mullw r29, r29, r0
/* 803A06EC  7F A3 EB 78 */	mr r3, r29
/* 803A06F0  4B CB C8 19 */	bl func_8005CF08
/* 803A06F4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803A06F8  7F A3 EB 78 */	mr r3, r29
/* 803A06FC  4B CB C8 0D */	bl func_8005CF08
/* 803A0700  90 7F 00 14 */	stw r3, 0x14(r31)
/* 803A0704  80 1F 00 00 */	lwz r0, 0(r31)
/* 803A0708  80 9F 00 04 */	lwz r4, 4(r31)
/* 803A070C  1C 60 00 09 */	mulli r3, r0, 9
/* 803A0710  38 03 00 01 */	addi r0, r3, 1
/* 803A0714  7C 64 01 D6 */	mullw r3, r4, r0
/* 803A0718  38 03 00 02 */	addi r0, r3, 2
/* 803A071C  54 03 18 38 */	slwi r3, r0, 3
/* 803A0720  4B CB C7 E9 */	bl func_8005CF08
/* 803A0724  90 7F 00 D8 */	stw r3, 0xd8(r31)
/* 803A0728  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803A072C  28 03 00 00 */	cmplwi r3, 0
/* 803A0730  41 82 00 28 */	beq lbl_803A0758
/* 803A0734  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803A0738  28 00 00 00 */	cmplwi r0, 0
/* 803A073C  41 82 00 1C */	beq lbl_803A0758
/* 803A0740  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803A0744  28 00 00 00 */	cmplwi r0, 0
/* 803A0748  41 82 00 10 */	beq lbl_803A0758
/* 803A074C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 803A0750  28 00 00 00 */	cmplwi r0, 0
/* 803A0754  40 82 00 68 */	bne lbl_803A07BC
lbl_803A0758:
/* 803A0758  28 03 00 00 */	cmplwi r3, 0
/* 803A075C  41 82 00 10 */	beq lbl_803A076C
/* 803A0760  4B CB C7 D5 */	bl free
/* 803A0764  38 00 00 00 */	li r0, 0
/* 803A0768  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_803A076C:
/* 803A076C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803A0770  28 03 00 00 */	cmplwi r3, 0
/* 803A0774  41 82 00 10 */	beq lbl_803A0784
/* 803A0778  4B CB C7 BD */	bl free
/* 803A077C  38 00 00 00 */	li r0, 0
/* 803A0780  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_803A0784:
/* 803A0784  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803A0788  28 03 00 00 */	cmplwi r3, 0
/* 803A078C  41 82 00 10 */	beq lbl_803A079C
/* 803A0790  4B CB C7 A5 */	bl free
/* 803A0794  38 00 00 00 */	li r0, 0
/* 803A0798  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_803A079C:
/* 803A079C  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 803A07A0  28 03 00 00 */	cmplwi r3, 0
/* 803A07A4  41 82 00 10 */	beq lbl_803A07B4
/* 803A07A8  4B CB C7 8D */	bl free
/* 803A07AC  38 00 00 00 */	li r0, 0
/* 803A07B0  90 1F 00 D8 */	stw r0, 0xd8(r31)
lbl_803A07B4:
/* 803A07B4  38 60 00 00 */	li r3, 0
/* 803A07B8  48 00 00 20 */	b lbl_803A07D8
lbl_803A07BC:
/* 803A07BC  7F E3 FB 78 */	mr r3, r31
/* 803A07C0  4B FF FA A9 */	bl func_803A0268
/* 803A07C4  7F E3 FB 78 */	mr r3, r31
/* 803A07C8  4B FF FD 75 */	bl fbdemo_init_data
/* 803A07CC  38 00 00 00 */	li r0, 0
/* 803A07D0  7F E3 FB 78 */	mr r3, r31
/* 803A07D4  90 1F 00 08 */	stw r0, 8(r31)
lbl_803A07D8:
/* 803A07D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A07DC  4B CF A7 41 */	bl func_8009AF1C
/* 803A07E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A07E4  7C 08 03 A6 */	mtlr r0
/* 803A07E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A07EC  4E 80 00 20 */	blr 
