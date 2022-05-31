lbl_80403B50:
/* 80403B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80403B54  7C 08 02 A6 */	mflr r0
/* 80403B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80403B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80403B60  4B C9 73 71 */	bl func_8009AED0
/* 80403B64  7C 9E 23 78 */	mr r30, r4
/* 80403B68  7C 7C 1B 78 */	mr r28, r3
/* 80403B6C  80 63 01 14 */	lwz r3, 0x114(r3)
/* 80403B70  1F FE 00 44 */	mulli r31, r30, 0x44
/* 80403B74  3B A3 FF FF */	addi r29, r3, -1
/* 80403B78  48 00 00 2C */	b lbl_80403BA4
lbl_80403B7C:
/* 80403B7C  38 1E 00 01 */	addi r0, r30, 1
/* 80403B80  38 9F 00 04 */	addi r4, r31, 4
/* 80403B84  1C 60 00 44 */	mulli r3, r0, 0x44
/* 80403B88  38 A0 00 44 */	li r5, 0x44
/* 80403B8C  7C 9C 22 14 */	add r4, r28, r4
/* 80403B90  38 63 00 04 */	addi r3, r3, 4
/* 80403B94  7C 7C 1A 14 */	add r3, r28, r3
/* 80403B98  4B C5 94 85 */	bl func_8005D01C
/* 80403B9C  3B DE 00 01 */	addi r30, r30, 1
/* 80403BA0  3B FF 00 44 */	addi r31, r31, 0x44
lbl_80403BA4:
/* 80403BA4  7C 1E E8 00 */	cmpw r30, r29
/* 80403BA8  41 80 FF D4 */	blt lbl_80403B7C
/* 80403BAC  1C 7D 00 44 */	mulli r3, r29, 0x44
/* 80403BB0  38 80 00 44 */	li r4, 0x44
/* 80403BB4  38 63 00 04 */	addi r3, r3, 4
/* 80403BB8  7C 7C 1A 14 */	add r3, r28, r3
/* 80403BBC  4B C5 94 AD */	bl bzero
/* 80403BC0  80 7C 01 14 */	lwz r3, 0x114(r28)
/* 80403BC4  38 03 FF FF */	addi r0, r3, -1
/* 80403BC8  90 1C 01 14 */	stw r0, 0x114(r28)
/* 80403BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80403BD0  4B C9 73 4D */	bl func_8009AF1C
/* 80403BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80403BD8  7C 08 03 A6 */	mtlr r0
/* 80403BDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80403BE0  4E 80 00 20 */	blr 
