lbl_805F0774:
/* 805F0774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F0778  7C 08 02 A6 */	mflr r0
/* 805F077C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F0780  39 61 00 20 */	addi r11, r1, 0x20
/* 805F0784  4B AA A7 51 */	bl func_8009AED4
/* 805F0788  2C 05 00 03 */	cmpwi r5, 3
/* 805F078C  3C C0 80 6D */	lis r6, data_806CF828@ha /* 0x806CF828@ha */
/* 805F0790  7C 7E 1B 78 */	mr r30, r3
/* 805F0794  7C 9F 23 78 */	mr r31, r4
/* 805F0798  3B A6 F8 28 */	addi r29, r6, data_806CF828@l /* 0x806CF828@l */
/* 805F079C  41 82 00 F8 */	beq lbl_805F0894
/* 805F07A0  40 80 00 14 */	bge lbl_805F07B4
/* 805F07A4  2C 05 00 01 */	cmpwi r5, 1
/* 805F07A8  41 82 00 1C */	beq lbl_805F07C4
/* 805F07AC  40 80 00 74 */	bge lbl_805F0820
/* 805F07B0  48 00 02 08 */	b lbl_805F09B8
lbl_805F07B4:
/* 805F07B4  2C 05 00 05 */	cmpwi r5, 5
/* 805F07B8  41 82 01 A8 */	beq lbl_805F0960
/* 805F07BC  40 80 01 FC */	bge lbl_805F09B8
/* 805F07C0  48 00 01 30 */	b lbl_805F08F0
lbl_805F07C4:
/* 805F07C4  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 805F07C8  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F07CC  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 805F07D0  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F07D4  54 00 10 3A */	slwi r0, r0, 2
/* 805F07D8  38 A0 00 23 */	li r5, 0x23
/* 805F07DC  7C E7 02 14 */	add r7, r7, r0
/* 805F07E0  4B FF F9 D1 */	bl mTG_strcat_color
/* 805F07E4  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F07E8  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 805F07EC  38 A0 00 23 */	li r5, 0x23
/* 805F07F0  38 C0 00 05 */	li r6, 5
/* 805F07F4  4B FF F8 AD */	bl mTG_strcat
/* 805F07F8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 805F07FC  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F0800  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 805F0804  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F0808  54 00 10 3A */	slwi r0, r0, 2
/* 805F080C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805F0810  7C E7 02 14 */	add r7, r7, r0
/* 805F0814  38 A0 00 23 */	li r5, 0x23
/* 805F0818  4B FF F9 99 */	bl mTG_strcat_color
/* 805F081C  48 00 01 9C */	b lbl_805F09B8
lbl_805F0820:
/* 805F0820  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F0824  38 9D 03 14 */	addi r4, r29, 0x314
/* 805F0828  38 A0 00 23 */	li r5, 0x23
/* 805F082C  38 C0 00 05 */	li r6, 5
/* 805F0830  4B FF F8 71 */	bl mTG_strcat
/* 805F0834  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 805F0838  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F083C  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 805F0840  7F E4 FB 78 */	mr r4, r31
/* 805F0844  54 00 10 3A */	slwi r0, r0, 2
/* 805F0848  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F084C  7C E7 02 14 */	add r7, r7, r0
/* 805F0850  38 A0 00 23 */	li r5, 0x23
/* 805F0854  4B FF F9 5D */	bl mTG_strcat_color
/* 805F0858  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F085C  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 805F0860  38 A0 00 23 */	li r5, 0x23
/* 805F0864  38 C0 00 05 */	li r6, 5
/* 805F0868  4B FF F8 39 */	bl mTG_strcat
/* 805F086C  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 805F0870  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F0874  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 805F0878  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F087C  54 00 10 3A */	slwi r0, r0, 2
/* 805F0880  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805F0884  7C E7 02 14 */	add r7, r7, r0
/* 805F0888  38 A0 00 23 */	li r5, 0x23
/* 805F088C  4B FF F9 25 */	bl mTG_strcat_color
/* 805F0890  48 00 01 28 */	b lbl_805F09B8
lbl_805F0894:
/* 805F0894  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 805F0898  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F089C  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 805F08A0  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F08A4  54 00 10 3A */	slwi r0, r0, 2
/* 805F08A8  38 A0 00 23 */	li r5, 0x23
/* 805F08AC  7C E7 02 14 */	add r7, r7, r0
/* 805F08B0  4B FF F9 01 */	bl mTG_strcat_color
/* 805F08B4  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F08B8  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 805F08BC  38 A0 00 23 */	li r5, 0x23
/* 805F08C0  38 C0 00 05 */	li r6, 5
/* 805F08C4  4B FF F7 DD */	bl mTG_strcat
/* 805F08C8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 805F08CC  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F08D0  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 805F08D4  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F08D8  54 00 10 3A */	slwi r0, r0, 2
/* 805F08DC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805F08E0  7C E7 02 14 */	add r7, r7, r0
/* 805F08E4  38 A0 00 23 */	li r5, 0x23
/* 805F08E8  4B FF F8 C9 */	bl mTG_strcat_color
/* 805F08EC  48 00 00 CC */	b lbl_805F09B8
lbl_805F08F0:
/* 805F08F0  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 805F08F4  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F08F8  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 805F08FC  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F0900  54 00 10 3A */	slwi r0, r0, 2
/* 805F0904  38 A0 00 23 */	li r5, 0x23
/* 805F0908  7C E7 02 14 */	add r7, r7, r0
/* 805F090C  4B FF F8 A5 */	bl mTG_strcat_color
/* 805F0910  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F0914  38 9D 03 04 */	addi r4, r29, 0x304
/* 805F0918  38 A0 00 23 */	li r5, 0x23
/* 805F091C  38 C0 00 05 */	li r6, 5
/* 805F0920  4B FF F7 81 */	bl mTG_strcat
/* 805F0924  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F0928  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 805F092C  38 A0 00 23 */	li r5, 0x23
/* 805F0930  38 C0 00 05 */	li r6, 5
/* 805F0934  4B FF F7 6D */	bl mTG_strcat
/* 805F0938  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 805F093C  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F0940  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 805F0944  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F0948  54 00 10 3A */	slwi r0, r0, 2
/* 805F094C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805F0950  7C E7 02 14 */	add r7, r7, r0
/* 805F0954  38 A0 00 23 */	li r5, 0x23
/* 805F0958  4B FF F8 59 */	bl mTG_strcat_color
/* 805F095C  48 00 00 5C */	b lbl_805F09B8
lbl_805F0960:
/* 805F0960  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 805F0964  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F0968  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 805F096C  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F0970  54 00 10 3A */	slwi r0, r0, 2
/* 805F0974  38 A0 00 23 */	li r5, 0x23
/* 805F0978  7C E7 02 14 */	add r7, r7, r0
/* 805F097C  4B FF F8 35 */	bl mTG_strcat_color
/* 805F0980  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F0984  38 9D 02 FC */	addi r4, r29, 0x2fc
/* 805F0988  38 A0 00 23 */	li r5, 0x23
/* 805F098C  38 C0 00 05 */	li r6, 5
/* 805F0990  4B FF F7 11 */	bl mTG_strcat
/* 805F0994  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 805F0998  38 FD 10 9C */	addi r7, r29, 0x109c
/* 805F099C  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 805F09A0  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F09A4  54 00 10 3A */	slwi r0, r0, 2
/* 805F09A8  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805F09AC  7C E7 02 14 */	add r7, r7, r0
/* 805F09B0  38 A0 00 23 */	li r5, 0x23
/* 805F09B4  4B FF F7 FD */	bl mTG_strcat_color
lbl_805F09B8:
/* 805F09B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F09BC  4B AA A5 65 */	bl func_8009AF20
/* 805F09C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F09C4  7C 08 03 A6 */	mtlr r0
/* 805F09C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805F09CC  4E 80 00 20 */	blr 
