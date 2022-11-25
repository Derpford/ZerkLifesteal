version "4.0"
class ZerkLifestealHandler : EventHandler {
    override void WorldThingDamaged(WorldEvent e) {
        if (e.DamageSource.CountInv("PowerStrength") > 0 && e.Thing.Vec3To(e.DamageSource).length() <= 128) {
            e.DamageSource.GiveBody(1);
        }
    }
}