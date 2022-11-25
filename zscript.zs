class ZerkLifestealHandler : EventHandler {
    override WorldThingDamaged(WorldEvent e) {
        if (e.DamageSource.CountInv("PowerStrength") > 0 && e.Thing.Vec3To(e.DamageSource) <= 128) {
            e.DamageSource.GiveBody(1);
        }
    }
}