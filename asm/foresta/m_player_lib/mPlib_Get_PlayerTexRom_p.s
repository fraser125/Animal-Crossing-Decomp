lbl_803D9018:
/* 803D9018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D901C  7C 08 02 A6 */	mflr r0
/* 803D9020  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D9028  7C 7F 1B 78 */	mr r31, r3
/* 803D902C  48 00 02 59 */	bl mPlib_Check_PlayerClothInAram
/* 803D9030  2C 03 00 00 */	cmpwi r3, 0
/* 803D9034  41 82 00 18 */	beq lbl_803D904C
/* 803D9038  38 60 00 16 */	li r3, 0x16
/* 803D903C  4B C2 DB 99 */	bl JW_GetAramAddress
/* 803D9040  57 E0 48 2C */	slwi r0, r31, 9
/* 803D9044  7C 63 02 14 */	add r3, r3, r0
/* 803D9048  48 00 00 38 */	b lbl_803D9080
lbl_803D904C:
/* 803D904C  34 1F FF 00 */	addic. r0, r31, -256
/* 803D9050  41 80 00 0C */	blt lbl_803D905C
/* 803D9054  2C 00 00 08 */	cmpwi r0, 8
/* 803D9058  41 80 00 08 */	blt lbl_803D9060
lbl_803D905C:
/* 803D905C  38 00 00 00 */	li r0, 0
lbl_803D9060:
/* 803D9060  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 803D9064  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D9068  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803D906C  1C 60 02 20 */	mulli r3, r0, 0x220
/* 803D9070  3C 84 00 02 */	addis r4, r4, 2
/* 803D9074  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 803D9078  38 63 12 60 */	addi r3, r3, 0x1260
/* 803D907C  7C 60 1A 14 */	add r3, r0, r3
lbl_803D9080:
/* 803D9080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D9088  7C 08 03 A6 */	mtlr r0
/* 803D908C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9090  4E 80 00 20 */	blr 
