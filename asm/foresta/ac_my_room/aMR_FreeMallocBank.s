lbl_80473118:
/* 80473118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047311C  7C 08 02 A6 */	mflr r0
/* 80473120  90 01 00 24 */	stw r0, 0x24(r1)
/* 80473124  39 61 00 20 */	addi r11, r1, 0x20
/* 80473128  4B C2 7D AD */	bl func_8009AED4
/* 8047312C  7C 7D 1B 78 */	mr r29, r3
/* 80473130  80 03 04 E0 */	lwz r0, 0x4e0(r3)
/* 80473134  2C 00 00 00 */	cmpwi r0, 0
/* 80473138  41 82 00 38 */	beq lbl_80473170
/* 8047313C  3C 60 81 1D */	lis r3, l_bank_address_table@ha /* 0x811CE4E8@ha */
/* 80473140  3B C0 00 00 */	li r30, 0
/* 80473144  3B E3 E4 E8 */	addi r31, r3, l_bank_address_table@l /* 0x811CE4E8@l */
/* 80473148  48 00 00 1C */	b lbl_80473164
lbl_8047314C:
/* 8047314C  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80473150  7C 00 F2 14 */	add r0, r0, r30
/* 80473154  54 00 10 3A */	slwi r0, r0, 2
/* 80473158  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8047315C  4B F4 93 59 */	bl zelda_free
/* 80473160  3B DE 00 01 */	addi r30, r30, 1
lbl_80473164:
/* 80473164  80 1D 04 E0 */	lwz r0, 0x4e0(r29)
/* 80473168  7C 1E 00 00 */	cmpw r30, r0
/* 8047316C  41 80 FF E0 */	blt lbl_8047314C
lbl_80473170:
/* 80473170  39 61 00 20 */	addi r11, r1, 0x20
/* 80473174  4B C2 7D AD */	bl func_8009AF20
/* 80473178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047317C  7C 08 03 A6 */	mtlr r0
/* 80473180  38 21 00 20 */	addi r1, r1, 0x20
/* 80473184  4E 80 00 20 */	blr 
