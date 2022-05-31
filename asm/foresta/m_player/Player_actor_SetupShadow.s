lbl_804D51F0:
/* 804D51F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D51F4  7C 08 02 A6 */	mflr r0
/* 804D51F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D51FC  38 00 00 00 */	li r0, 0
/* 804D5200  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804D5204  2C 05 00 00 */	cmpwi r5, 0
/* 804D5208  41 80 00 10 */	blt lbl_804D5218
/* 804D520C  2C 05 00 79 */	cmpwi r5, 0x79
/* 804D5210  40 80 00 08 */	bge lbl_804D5218
/* 804D5214  38 00 00 01 */	li r0, 1
lbl_804D5218:
/* 804D5218  2C 00 00 00 */	cmpwi r0, 0
/* 804D521C  41 82 00 70 */	beq lbl_804D528C
/* 804D5220  3C 80 80 64 */	lis r4, data_812@ha /* 0x80646678@ha */
/* 804D5224  38 84 66 78 */	addi r4, r4, data_812@l /* 0x80646678@l */
/* 804D5228  7C 04 28 AE */	lbzx r0, r4, r5
/* 804D522C  7C 00 07 74 */	extsb r0, r0
/* 804D5230  2C 00 00 02 */	cmpwi r0, 2
/* 804D5234  41 82 00 20 */	beq lbl_804D5254
/* 804D5238  40 80 00 10 */	bge lbl_804D5248
/* 804D523C  2C 00 00 01 */	cmpwi r0, 1
/* 804D5240  40 80 00 24 */	bge lbl_804D5264
/* 804D5244  48 00 00 3C */	b lbl_804D5280
lbl_804D5248:
/* 804D5248  2C 00 00 04 */	cmpwi r0, 4
/* 804D524C  40 80 00 34 */	bge lbl_804D5280
/* 804D5250  48 00 00 24 */	b lbl_804D5274
lbl_804D5254:
/* 804D5254  38 00 00 01 */	li r0, 1
/* 804D5258  98 03 01 08 */	stb r0, 0x108(r3)
/* 804D525C  4B FF FF 01 */	bl Player_actor_Set_force_shadow_position_fromAnimePosition
/* 804D5260  48 00 00 2C */	b lbl_804D528C
lbl_804D5264:
/* 804D5264  38 00 00 01 */	li r0, 1
/* 804D5268  98 03 01 08 */	stb r0, 0x108(r3)
/* 804D526C  4B FF FF 61 */	bl Player_actor_Set_force_shadow_position_fromWorldPosition
/* 804D5270  48 00 00 1C */	b lbl_804D528C
lbl_804D5274:
/* 804D5274  38 00 00 00 */	li r0, 0
/* 804D5278  98 03 01 08 */	stb r0, 0x108(r3)
/* 804D527C  48 00 00 10 */	b lbl_804D528C
lbl_804D5280:
/* 804D5280  38 00 00 01 */	li r0, 1
/* 804D5284  98 03 01 08 */	stb r0, 0x108(r3)
/* 804D5288  4B EA 1C 01 */	bl mActorShadow_UnSetForceShadowPos
lbl_804D528C:
/* 804D528C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5290  7C 08 03 A6 */	mtlr r0
/* 804D5294  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5298  4E 80 00 20 */	blr 
