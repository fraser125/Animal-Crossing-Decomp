lbl_80574894:
/* 80574894  2C 04 30 91 */	cmpwi r4, 0x3091
/* 80574898  41 82 00 0C */	beq lbl_805748A4
/* 8057489C  2C 04 30 96 */	cmpwi r4, 0x3096
/* 805748A0  40 82 00 58 */	bne lbl_805748F8
lbl_805748A4:
/* 805748A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805748A8  80 E3 01 4C */	lwz r7, 0x14c(r3)
/* 805748AC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805748B0  3C 80 80 6C */	lis r4, msg_base_no@ha /* 0x806BF848@ha */
/* 805748B4  3C 63 00 02 */	addis r3, r3, 2
/* 805748B8  80 07 01 90 */	lwz r0, 0x190(r7)
/* 805748BC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805748C0  38 A4 F8 48 */	addi r5, r4, msg_base_no@l /* 0x806BF848@l */
/* 805748C4  54 06 18 38 */	slwi r6, r0, 3
/* 805748C8  80 87 01 B4 */	lwz r4, 0x1b4(r7)
/* 805748CC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 805748D0  7C 65 32 14 */	add r3, r5, r6
/* 805748D4  7C 00 07 74 */	extsb r0, r0
/* 805748D8  54 00 10 3A */	slwi r0, r0, 2
/* 805748DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805748E0  7C 60 20 51 */	subf. r3, r0, r4
/* 805748E4  41 80 00 0C */	blt lbl_805748F0
/* 805748E8  2C 03 00 05 */	cmpwi r3, 5
/* 805748EC  41 80 00 2C */	blt lbl_80574918
lbl_805748F0:
/* 805748F0  7C 04 03 78 */	mr r4, r0
/* 805748F4  48 00 00 24 */	b lbl_80574918
lbl_805748F8:
/* 805748F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805748FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80574900  3C 63 00 02 */	addis r3, r3, 2
/* 80574904  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80574908  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8057490C  7C 00 07 75 */	extsb. r0, r0
/* 80574910  41 82 00 08 */	beq lbl_80574918
/* 80574914  38 84 00 D2 */	addi r4, r4, 0xd2
lbl_80574918:
/* 80574918  7C 83 23 78 */	mr r3, r4
/* 8057491C  4E 80 00 20 */	blr 
