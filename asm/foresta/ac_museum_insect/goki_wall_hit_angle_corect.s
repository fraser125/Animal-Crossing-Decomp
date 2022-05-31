lbl_8046AB24:
/* 8046AB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AB28  7C 08 02 A6 */	mflr r0
/* 8046AB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AB30  A8 83 00 8C */	lha r4, 0x8c(r3)
/* 8046AB34  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8046AB38  41 82 00 10 */	beq lbl_8046AB48
/* 8046AB3C  38 80 40 00 */	li r4, 0x4000
/* 8046AB40  4B FF FE 69 */	bl goki_wall_hit_angle_corect_sub
/* 8046AB44  48 00 00 3C */	b lbl_8046AB80
lbl_8046AB48:
/* 8046AB48  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8046AB4C  41 82 00 10 */	beq lbl_8046AB5C
/* 8046AB50  38 80 C0 00 */	li r4, -16384
/* 8046AB54  4B FF FE 55 */	bl goki_wall_hit_angle_corect_sub
/* 8046AB58  48 00 00 28 */	b lbl_8046AB80
lbl_8046AB5C:
/* 8046AB5C  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 8046AB60  41 82 00 10 */	beq lbl_8046AB70
/* 8046AB64  38 80 00 00 */	li r4, 0
/* 8046AB68  4B FF FE 41 */	bl goki_wall_hit_angle_corect_sub
/* 8046AB6C  48 00 00 14 */	b lbl_8046AB80
lbl_8046AB70:
/* 8046AB70  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8046AB74  41 82 00 0C */	beq lbl_8046AB80
/* 8046AB78  38 80 80 00 */	li r4, -32768
/* 8046AB7C  4B FF FE 2D */	bl goki_wall_hit_angle_corect_sub
lbl_8046AB80:
/* 8046AB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AB84  7C 08 03 A6 */	mtlr r0
/* 8046AB88  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AB8C  4E 80 00 20 */	blr 
