lbl_804ADCD8:
/* 804ADCD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ADCDC  7C 08 02 A6 */	mflr r0
/* 804ADCE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ADCE4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 804ADCE8  2C 00 00 01 */	cmpwi r0, 1
/* 804ADCEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ADCF0  7C 7F 1B 78 */	mr r31, r3
/* 804ADCF4  41 82 00 34 */	beq lbl_804ADD28
/* 804ADCF8  40 80 00 10 */	bge lbl_804ADD08
/* 804ADCFC  2C 00 00 00 */	cmpwi r0, 0
/* 804ADD00  40 80 00 14 */	bge lbl_804ADD14
/* 804ADD04  48 00 00 68 */	b lbl_804ADD6C
lbl_804ADD08:
/* 804ADD08  2C 00 00 03 */	cmpwi r0, 3
/* 804ADD0C  40 80 00 60 */	bge lbl_804ADD6C
/* 804ADD10  48 00 00 3C */	b lbl_804ADD4C
lbl_804ADD14:
/* 804ADD14  38 7F 00 28 */	addi r3, r31, 0x28
/* 804ADD18  38 9F 01 DC */	addi r4, r31, 0x1dc
/* 804ADD1C  7C 65 1B 78 */	mr r5, r3
/* 804ADD20  4B F0 D2 25 */	bl xyz_t_add
/* 804ADD24  48 00 00 48 */	b lbl_804ADD6C
lbl_804ADD28:
/* 804ADD28  38 7F 00 28 */	addi r3, r31, 0x28
/* 804ADD2C  38 9F 01 DC */	addi r4, r31, 0x1dc
/* 804ADD30  7C 65 1B 78 */	mr r5, r3
/* 804ADD34  4B F0 D2 11 */	bl xyz_t_add
/* 804ADD38  38 7F 01 DC */	addi r3, r31, 0x1dc
/* 804ADD3C  38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 804ADD40  7C 65 1B 78 */	mr r5, r3
/* 804ADD44  4B F0 D2 35 */	bl xyz_t_sub
/* 804ADD48  48 00 00 24 */	b lbl_804ADD6C
lbl_804ADD4C:
/* 804ADD4C  38 7F 02 68 */	addi r3, r31, 0x268
/* 804ADD50  38 9F 01 F4 */	addi r4, r31, 0x1f4
/* 804ADD54  7C 65 1B 78 */	mr r5, r3
/* 804ADD58  4B F0 D1 ED */	bl xyz_t_add
/* 804ADD5C  38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 804ADD60  38 9F 02 00 */	addi r4, r31, 0x200
/* 804ADD64  7C 65 1B 78 */	mr r5, r3
/* 804ADD68  4B F0 D2 11 */	bl xyz_t_sub
lbl_804ADD6C:
/* 804ADD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ADD74  7C 08 03 A6 */	mtlr r0
/* 804ADD78  38 21 00 10 */	addi r1, r1, 0x10
/* 804ADD7C  4E 80 00 20 */	blr 
