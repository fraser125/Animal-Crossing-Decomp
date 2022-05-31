lbl_8041AF3C:
/* 8041AF3C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8041AF40  7C 08 02 A6 */	mflr r0
/* 8041AF44  90 01 00 74 */	stw r0, 0x74(r1)
/* 8041AF48  39 61 00 70 */	addi r11, r1, 0x70
/* 8041AF4C  4B C7 FF 61 */	bl func_8009AEAC
/* 8041AF50  7C 76 1B 78 */	mr r22, r3
/* 8041AF54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041AF58  39 23 85 38 */	addi r9, r3, common_data@l /* 0x81138538@l */
/* 8041AF5C  81 16 01 EC */	lwz r8, 0x1ec(r22)
/* 8041AF60  80 76 01 E8 */	lwz r3, 0x1e8(r22)
/* 8041AF64  3A 81 00 24 */	addi r20, r1, 0x24
/* 8041AF68  3B C8 FF FE */	addi r30, r8, -2
/* 8041AF6C  3A 61 00 14 */	addi r19, r1, 0x14
/* 8041AF70  38 03 FF FD */	addi r0, r3, -3
/* 8041AF74  7C 97 23 78 */	mr r23, r4
/* 8041AF78  7F BE 01 D6 */	mullw r29, r30, r0
/* 8041AF7C  7C B8 2B 78 */	mr r24, r5
/* 8041AF80  7C D9 33 78 */	mr r25, r6
/* 8041AF84  7C FA 3B 78 */	mr r26, r7
/* 8041AF88  3F E9 00 02 */	addis r31, r9, 2
/* 8041AF8C  3E A9 00 03 */	addis r21, r9, 3
/* 8041AF90  3B 60 00 03 */	li r27, 3
/* 8041AF94  48 00 01 E8 */	b lbl_8041B17C
lbl_8041AF98:
/* 8041AF98  7F BC EB 78 */	mr r28, r29
/* 8041AF9C  48 00 01 D4 */	b lbl_8041B170
lbl_8041AFA0:
/* 8041AFA0  88 9F 61 25 */	lbz r4, 0x6125(r31)
/* 8041AFA4  2C 1B 00 02 */	cmpwi r27, 2
/* 8041AFA8  88 7F 61 23 */	lbz r3, 0x6123(r31)
/* 8041AFAC  88 1F 61 22 */	lbz r0, 0x6122(r31)
/* 8041AFB0  7C 64 19 D6 */	mullw r3, r4, r3
/* 8041AFB4  88 9F 61 20 */	lbz r4, 0x6120(r31)
/* 8041AFB8  7C 00 E2 14 */	add r0, r0, r28
/* 8041AFBC  1C 00 00 07 */	mulli r0, r0, 7
/* 8041AFC0  7C 03 02 14 */	add r0, r3, r0
/* 8041AFC4  7C 04 02 14 */	add r0, r4, r0
/* 8041AFC8  7C BA 00 50 */	subf r5, r26, r0
/* 8041AFCC  7C A3 FE 70 */	srawi r3, r5, 0x1f
/* 8041AFD0  7C 60 2A 78 */	xor r0, r3, r5
/* 8041AFD4  7C A3 00 50 */	subf r5, r3, r0
/* 8041AFD8  7C 05 EB D6 */	divw r0, r5, r29
/* 8041AFDC  7C 00 E9 D6 */	mullw r0, r0, r29
/* 8041AFE0  7C A0 28 50 */	subf r5, r0, r5
/* 8041AFE4  7C 65 F3 D6 */	divw r3, r5, r30
/* 8041AFE8  7C 03 F1 D6 */	mullw r0, r3, r30
/* 8041AFEC  38 83 00 02 */	addi r4, r3, 2
/* 8041AFF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8041AFF4  7C 60 28 50 */	subf r3, r0, r5
/* 8041AFF8  38 63 00 01 */	addi r3, r3, 1
/* 8041AFFC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8041B000  41 80 00 10 */	blt lbl_8041B010
/* 8041B004  4B F8 B0 21 */	bl mFI_CheckBgDma
/* 8041B008  2C 03 00 00 */	cmpwi r3, 0
/* 8041B00C  40 82 01 60 */	bne lbl_8041B16C
lbl_8041B010:
/* 8041B010  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041B014  80 76 02 18 */	lwz r3, 0x218(r22)
/* 8041B018  7C 00 18 00 */	cmpw r0, r3
/* 8041B01C  40 82 00 14 */	bne lbl_8041B030
/* 8041B020  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8041B024  80 76 02 14 */	lwz r3, 0x214(r22)
/* 8041B028  7C 04 18 00 */	cmpw r4, r3
/* 8041B02C  41 82 01 40 */	beq lbl_8041B16C
lbl_8041B030:
/* 8041B030  80 76 02 24 */	lwz r3, 0x224(r22)
/* 8041B034  7C 00 18 00 */	cmpw r0, r3
/* 8041B038  40 82 00 14 */	bne lbl_8041B04C
/* 8041B03C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8041B040  80 76 02 20 */	lwz r3, 0x220(r22)
/* 8041B044  7C 04 18 00 */	cmpw r4, r3
/* 8041B048  41 82 01 24 */	beq lbl_8041B16C
lbl_8041B04C:
/* 8041B04C  80 76 02 30 */	lwz r3, 0x230(r22)
/* 8041B050  7C 00 18 00 */	cmpw r0, r3
/* 8041B054  40 82 00 14 */	bne lbl_8041B068
/* 8041B058  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8041B05C  80 76 02 2C */	lwz r3, 0x22c(r22)
/* 8041B060  7C 04 18 00 */	cmpw r4, r3
/* 8041B064  41 82 01 08 */	beq lbl_8041B16C
lbl_8041B068:
/* 8041B068  80 76 02 3C */	lwz r3, 0x23c(r22)
/* 8041B06C  7C 00 18 00 */	cmpw r0, r3
/* 8041B070  40 82 00 14 */	bne lbl_8041B084
/* 8041B074  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8041B078  80 76 02 38 */	lwz r3, 0x238(r22)
/* 8041B07C  7C 04 18 00 */	cmpw r4, r3
/* 8041B080  41 82 00 EC */	beq lbl_8041B16C
lbl_8041B084:
/* 8041B084  80 76 02 48 */	lwz r3, 0x248(r22)
/* 8041B088  7C 00 18 00 */	cmpw r0, r3
/* 8041B08C  40 82 00 14 */	bne lbl_8041B0A0
/* 8041B090  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B094  80 16 02 44 */	lwz r0, 0x244(r22)
/* 8041B098  7C 03 00 00 */	cmpw r3, r0
/* 8041B09C  41 82 00 D0 */	beq lbl_8041B16C
lbl_8041B0A0:
/* 8041B0A0  2C 1B 00 03 */	cmpwi r27, 3
/* 8041B0A4  41 80 00 28 */	blt lbl_8041B0CC
/* 8041B0A8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B0AC  38 81 00 08 */	addi r4, r1, 8
/* 8041B0B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041B0B4  90 61 00 08 */	stw r3, 8(r1)
/* 8041B0B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041B0BC  80 77 00 00 */	lwz r3, 0(r23)
/* 8041B0C0  4B F8 32 D5 */	bl mEv_use_block_by_other_event
/* 8041B0C4  2C 03 00 00 */	cmpwi r3, 0
/* 8041B0C8  40 82 00 A4 */	bne lbl_8041B16C
lbl_8041B0CC:
/* 8041B0CC  2C 1B 00 03 */	cmpwi r27, 3
/* 8041B0D0  41 80 00 54 */	blt lbl_8041B124
/* 8041B0D4  80 D5 88 6C */	lwz r6, -0x7794(r21)
/* 8041B0D8  7E 83 A3 78 */	mr r3, r20
/* 8041B0DC  80 15 88 70 */	lwz r0, -0x7790(r21)
/* 8041B0E0  38 81 00 20 */	addi r4, r1, 0x20
/* 8041B0E4  38 A1 00 28 */	addi r5, r1, 0x28
/* 8041B0E8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8041B0EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8041B0F0  80 15 88 74 */	lwz r0, -0x778c(r21)
/* 8041B0F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8041B0F8  4B F8 A6 69 */	bl mFI_Wpos2BlockNum
/* 8041B0FC  2C 03 00 00 */	cmpwi r3, 0
/* 8041B100  41 82 00 24 */	beq lbl_8041B124
/* 8041B104  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8041B108  80 14 00 00 */	lwz r0, 0(r20)
/* 8041B10C  7C 03 00 00 */	cmpw r3, r0
/* 8041B110  40 82 00 14 */	bne lbl_8041B124
/* 8041B114  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B118  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8041B11C  7C 03 00 00 */	cmpw r3, r0
/* 8041B120  41 82 00 4C */	beq lbl_8041B16C
lbl_8041B124:
/* 8041B124  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8041B128  7E 63 9B 78 */	mr r3, r19
/* 8041B12C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8041B130  7F 67 DB 78 */	mr r7, r27
/* 8041B134  38 81 00 10 */	addi r4, r1, 0x10
/* 8041B138  4B FB 7C FD */	bl mNpc_GetMakeUtNuminBlock_hard_area
/* 8041B13C  2C 03 00 00 */	cmpwi r3, 0
/* 8041B140  41 82 00 2C */	beq lbl_8041B16C
/* 8041B144  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041B148  3B 60 00 00 */	li r27, 0
/* 8041B14C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041B150  90 78 00 00 */	stw r3, 0(r24)
/* 8041B154  90 18 00 04 */	stw r0, 4(r24)
/* 8041B158  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041B15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041B160  90 79 00 00 */	stw r3, 0(r25)
/* 8041B164  90 19 00 04 */	stw r0, 4(r25)
/* 8041B168  48 00 00 10 */	b lbl_8041B178
lbl_8041B16C:
/* 8041B16C  3B 9C FF FF */	addi r28, r28, -1
lbl_8041B170:
/* 8041B170  2C 1C 00 00 */	cmpwi r28, 0
/* 8041B174  41 81 FE 2C */	bgt lbl_8041AFA0
lbl_8041B178:
/* 8041B178  3B 7B FF FF */	addi r27, r27, -1
lbl_8041B17C:
/* 8041B17C  2C 1B 00 00 */	cmpwi r27, 0
/* 8041B180  41 81 FE 18 */	bgt lbl_8041AF98
/* 8041B184  7F 83 E3 78 */	mr r3, r28
/* 8041B188  39 61 00 70 */	addi r11, r1, 0x70
/* 8041B18C  4B C7 FD 6D */	bl func_8009AEF8
/* 8041B190  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8041B194  7C 08 03 A6 */	mtlr r0
/* 8041B198  38 21 00 70 */	addi r1, r1, 0x70
/* 8041B19C  4E 80 00 20 */	blr 
