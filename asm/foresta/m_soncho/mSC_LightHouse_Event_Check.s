lbl_803ED7F0:
/* 803ED7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED7F4  7C 08 02 A6 */	mflr r0
/* 803ED7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED7FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED800  93 C1 00 08 */	stw r30, 8(r1)
/* 803ED804  7C 7E 1B 78 */	mr r30, r3
/* 803ED808  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED80C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED810  2C 1E FF FF */	cmpwi r30, -1
/* 803ED814  3F E3 00 02 */	addis r31, r3, 2
/* 803ED818  40 82 00 08 */	bne lbl_803ED820
/* 803ED81C  8B DF 60 03 */	lbz r30, 0x6003(r31)
lbl_803ED820:
/* 803ED820  2C 1E 00 04 */	cmpwi r30, 4
/* 803ED824  41 80 00 0C */	blt lbl_803ED830
/* 803ED828  38 60 00 00 */	li r3, 0
/* 803ED82C  48 00 00 C4 */	b lbl_803ED8F0
lbl_803ED830:
/* 803ED830  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED834  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED838  3C 63 00 02 */	addis r3, r3, 2
/* 803ED83C  38 63 61 20 */	addi r3, r3, 0x6120
/* 803ED840  4B FF FD FD */	bl mSC_LightHouse_get_period
/* 803ED844  2C 03 00 02 */	cmpwi r3, 2
/* 803ED848  41 82 00 0C */	beq lbl_803ED854
/* 803ED84C  38 60 00 00 */	li r3, 0
/* 803ED850  48 00 00 A0 */	b lbl_803ED8F0
lbl_803ED854:
/* 803ED854  38 A0 00 01 */	li r5, 1
/* 803ED858  88 7F 41 72 */	lbz r3, 0x4172(r31)
/* 803ED85C  7C A0 F0 30 */	slw r0, r5, r30
/* 803ED860  7C 60 00 39 */	and. r0, r3, r0
/* 803ED864  41 82 00 0C */	beq lbl_803ED870
/* 803ED868  38 60 00 00 */	li r3, 0
/* 803ED86C  48 00 00 84 */	b lbl_803ED8F0
lbl_803ED870:
/* 803ED870  88 1F 41 70 */	lbz r0, 0x4170(r31)
/* 803ED874  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 803ED878  2C 00 00 7F */	cmpwi r0, 0x7f
/* 803ED87C  40 82 00 34 */	bne lbl_803ED8B0
/* 803ED880  38 1E 00 04 */	addi r0, r30, 4
/* 803ED884  88 7F 41 71 */	lbz r3, 0x4171(r31)
/* 803ED888  7C A0 00 30 */	slw r0, r5, r0
/* 803ED88C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803ED890  7C 60 00 39 */	and. r0, r3, r0
/* 803ED894  41 82 00 58 */	beq lbl_803ED8EC
/* 803ED898  88 1F 41 6E */	lbz r0, 0x416e(r31)
/* 803ED89C  38 60 00 03 */	li r3, 3
/* 803ED8A0  28 00 00 01 */	cmplwi r0, 1
/* 803ED8A4  40 82 00 4C */	bne lbl_803ED8F0
/* 803ED8A8  7C A3 2B 78 */	mr r3, r5
/* 803ED8AC  48 00 00 44 */	b lbl_803ED8F0
lbl_803ED8B0:
/* 803ED8B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED8B4  88 9F 41 71 */	lbz r4, 0x4171(r31)
/* 803ED8B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED8BC  3C 63 00 02 */	addis r3, r3, 2
/* 803ED8C0  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 803ED8C4  7C A0 00 30 */	slw r0, r5, r0
/* 803ED8C8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803ED8CC  7C 80 00 39 */	and. r0, r4, r0
/* 803ED8D0  41 82 00 1C */	beq lbl_803ED8EC
/* 803ED8D4  88 1F 41 6E */	lbz r0, 0x416e(r31)
/* 803ED8D8  38 60 00 04 */	li r3, 4
/* 803ED8DC  28 00 00 01 */	cmplwi r0, 1
/* 803ED8E0  40 82 00 10 */	bne lbl_803ED8F0
/* 803ED8E4  38 60 00 02 */	li r3, 2
/* 803ED8E8  48 00 00 08 */	b lbl_803ED8F0
lbl_803ED8EC:
/* 803ED8EC  38 60 00 00 */	li r3, 0
lbl_803ED8F0:
/* 803ED8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED8F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ED8FC  7C 08 03 A6 */	mtlr r0
/* 803ED900  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED904  4E 80 00 20 */	blr 
