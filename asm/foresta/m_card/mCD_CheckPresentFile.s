lbl_803FBF60:
/* 803FBF60  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803FBF64  7C 08 02 A6 */	mflr r0
/* 803FBF68  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803FBF6C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803FBF70  4B C9 EF 55 */	bl func_8009AEC4
/* 803FBF74  7C DB 33 78 */	mr r27, r6
/* 803FBF78  7C 79 1B 78 */	mr r25, r3
/* 803FBF7C  7C 9A 23 78 */	mr r26, r4
/* 803FBF80  7C FC 3B 78 */	mr r28, r7
/* 803FBF84  7F 63 DB 78 */	mr r3, r27
/* 803FBF88  7C BF 2B 78 */	mr r31, r5
/* 803FBF8C  3B A0 00 00 */	li r29, 0
/* 803FBF90  38 80 20 00 */	li r4, 0x2000
/* 803FBF94  4B FF B9 0D */	bl mCD_check_card
/* 803FBF98  2C 03 00 01 */	cmpwi r3, 1
/* 803FBF9C  40 82 00 CC */	bne lbl_803FC068
/* 803FBFA0  7F E3 FB 78 */	mr r3, r31
/* 803FBFA4  7F 84 E3 78 */	mr r4, r28
/* 803FBFA8  38 A0 00 00 */	li r5, 0
/* 803FBFAC  4B C9 47 51 */	bl CARDMount
/* 803FBFB0  90 7B 00 00 */	stw r3, 0(r27)
/* 803FBFB4  80 1B 00 00 */	lwz r0, 0(r27)
/* 803FBFB8  2C 00 00 00 */	cmpwi r0, 0
/* 803FBFBC  41 82 00 0C */	beq lbl_803FBFC8
/* 803FBFC0  2C 00 FF FA */	cmpwi r0, -6
/* 803FBFC4  40 82 00 88 */	bne lbl_803FC04C
lbl_803FBFC8:
/* 803FBFC8  7F E3 FB 78 */	mr r3, r31
/* 803FBFCC  4B C9 3D AD */	bl CARDCheck
/* 803FBFD0  90 7B 00 00 */	stw r3, 0(r27)
/* 803FBFD4  80 1B 00 00 */	lwz r0, 0(r27)
/* 803FBFD8  2C 00 00 00 */	cmpwi r0, 0
/* 803FBFDC  40 82 00 60 */	bne lbl_803FC03C
/* 803FBFE0  83 DA 00 00 */	lwz r30, 0(r26)
/* 803FBFE4  48 00 00 50 */	b lbl_803FC034
lbl_803FBFE8:
/* 803FBFE8  7F E3 FB 78 */	mr r3, r31
/* 803FBFEC  7F C4 F3 78 */	mr r4, r30
/* 803FBFF0  38 A1 00 08 */	addi r5, r1, 8
/* 803FBFF4  4B C9 66 05 */	bl CARDGetStatus
/* 803FBFF8  90 7B 00 00 */	stw r3, 0(r27)
/* 803FBFFC  80 1B 00 00 */	lwz r0, 0(r27)
/* 803FC000  2C 00 00 00 */	cmpwi r0, 0
/* 803FC004  40 82 00 2C */	bne lbl_803FC030
/* 803FC008  38 61 00 08 */	addi r3, r1, 8
/* 803FC00C  4B FF EC 8D */	bl mCD_CheckPresentFileStatus
/* 803FC010  2C 03 00 01 */	cmpwi r3, 1
/* 803FC014  40 82 00 1C */	bne lbl_803FC030
/* 803FC018  7F 24 CB 78 */	mr r4, r25
/* 803FC01C  38 61 00 08 */	addi r3, r1, 8
/* 803FC020  38 A0 00 20 */	li r5, 0x20
/* 803FC024  4B C6 0F F9 */	bl func_8005D01C
/* 803FC028  3B A0 00 01 */	li r29, 1
/* 803FC02C  48 00 00 10 */	b lbl_803FC03C
lbl_803FC030:
/* 803FC030  3B DE 00 01 */	addi r30, r30, 1
lbl_803FC034:
/* 803FC034  2C 1E 00 20 */	cmpwi r30, 0x20
/* 803FC038  41 80 FF B0 */	blt lbl_803FBFE8
lbl_803FC03C:
/* 803FC03C  93 DA 00 00 */	stw r30, 0(r26)
/* 803FC040  7F E3 FB 78 */	mr r3, r31
/* 803FC044  4B C9 47 9D */	bl CARDUnmount
/* 803FC048  48 00 00 28 */	b lbl_803FC070
lbl_803FC04C:
/* 803FC04C  2C 00 FF F3 */	cmpwi r0, -13
/* 803FC050  40 82 00 0C */	bne lbl_803FC05C
/* 803FC054  7F E3 FB 78 */	mr r3, r31
/* 803FC058  4B C9 47 89 */	bl CARDUnmount
lbl_803FC05C:
/* 803FC05C  38 00 00 20 */	li r0, 0x20
/* 803FC060  90 1A 00 00 */	stw r0, 0(r26)
/* 803FC064  48 00 00 0C */	b lbl_803FC070
lbl_803FC068:
/* 803FC068  38 00 00 20 */	li r0, 0x20
/* 803FC06C  90 1A 00 00 */	stw r0, 0(r26)
lbl_803FC070:
/* 803FC070  7F A3 EB 78 */	mr r3, r29
/* 803FC074  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803FC078  4B C9 EE 99 */	bl func_8009AF10
/* 803FC07C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803FC080  7C 08 03 A6 */	mtlr r0
/* 803FC084  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803FC088  4E 80 00 20 */	blr 
